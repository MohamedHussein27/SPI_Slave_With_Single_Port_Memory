module SPI_SLAVE(
    input MOSI , tx_valid , clk , rst_n , ss_n ,
    input [7:0] tx_data ,
    output reg  MISO , rx_valid , 
    output reg [9:0] rx_data  
);
localparam IDLE = 3'b000,
           CHK_CMD = 3'b001,
           WRITE = 3'b010,
           READ_ADD = 3'b011,
           READ_DATA = 3'b100;
reg [2:0] cs , ns ; ///current state and next state           
reg ADD_DATA_checker ; //if it's set to high then we will go to READ_ADD state and we will go READ_DATA state otherwise
reg [3:0] counter1 ; //a counter to fill the rx_data (general counter)
reg [2:0] counter2 ; //specific counter for the READ_DATA state
reg [9:0] bus ; // an internal signal to be filled and then assigned to rx_data so the data can be sent in parallel

//state memory 
always @(posedge clk or negedge rst_n )
begin
    if(~rst_n) begin
        cs <= IDLE;
        counter1 <= 9; //as the first bit entered will be the MSB
        counter2 <= 7; // as the first bit outted will be the MSB
        ADD_DATA_checker <= 1; // as reading address first is the default
        rx_valid <= 0; 
        MISO  <= 0; // making the default output is zero
    end
    else begin
        cs <= ns ;
    end   
end

//next state logic
always @(*) begin
    case(cs)
        IDLE : begin
            if(ss_n)
                ns = IDLE;
            else    
                ns = CHK_CMD;
        end
        CHK_CMD : begin
            if(ss_n)
                ns = IDLE;
            else begin
                if((~ss_n) && (MOSI == 0))
                    ns = WRITE;
                else if ((~ss_n) && (MOSI == 1) && (ADD_DATA_checker == 1))
                    ns = READ_ADD;
                else if ((~ss_n) && (MOSI == 1) && (ADD_DATA_checker == 0))
                    ns = READ_DATA;
            end
        end
        WRITE : begin
            if(ss_n || counter1 == 4'b1111) //counter = -1(4'b1111 = -1) means that the whole rx_bus is completed so go to state IDLE
                ns = IDLE;
            else 
                ns = WRITE;
        end
        READ_ADD : begin 
            if(ss_n || counter1 == 4'b1111)
                ns = IDLE;     
            else
                ns = READ_ADD;
        end
        READ_DATA : begin        
            if(ss_n)
                ns = IDLE;
            else
                ns = READ_DATA;
        end
    endcase
end

//output logic 
always @(posedge clk) begin
    //IDLE state
    if(cs == IDLE) begin
        rx_valid <= 0;
        counter1 <= 9 ; //to start the same proccess in other states without resetting
        counter2 <= 7 ; 
    end
    //WRITE state
    else if(cs == WRITE) begin
        if (counter1 >= 0)begin
            bus[counter1] <= MOSI;
            counter1 <= counter1 - 1;   //decrement the counter to fill the whole output rx_data
        end
        if(counter1 == 4'b1111) begin//(4'b1111) means that the counter has the value -1 (the rx_data is completed)
            rx_valid = 1;
            rx_data <= bus ; //sending the parallel data to the RAM
        end
    end
    //READ_ADD state  (mostly the same as WRITE state)
    else if (cs == READ_ADD) begin
        if (counter1 >= 0)begin
            bus[counter1] <= MOSI;
            counter1 <= counter1 - 1;   //decrement the counter to fill the whole output rx_data
        end
        if(counter1 == 4'b1111) begin//(4'b1111) means that the counter has the value -1 (the rx_data is completed)
            rx_valid <= 1;
            rx_data <= bus ; //sending the parallel data to the RAM
            ADD_DATA_checker <= 0; //(means that the read address is recieved) as when this state ends we will go to the READ_DATA state 
        end
    end
    //READ_DATA state  
    else if (cs == READ_DATA) begin
        if (counter1 >= 0)begin
            bus[counter1] <= MOSI;
            counter1 <= counter1 - 1;   //decrement the counter to fill the whole output rx_data
        end
        if(counter1 == 4'b1111) begin//(4'b1111) means that the counter has the value -1 (the rx_data is completed)
            rx_valid <= 1;
            rx_data <= bus ; //sending the parallel data to the RAM
            counter1 <= 9 ; //only and only in this case we will reset the counter as we won't go back to the IDLE state until the process ends
        end
        if(rx_valid  == 1) rx_valid <= 0; //only and only in this case we will reset the rx_valid as we won't go back to the IDLE state until the process ends
        if(tx_valid==1 && counter2 >=0)begin
            MISO <= tx_data[counter2] ; //counter-2 as it it's an 8 bit bus not 10 bit bus 
            counter2 <= counter2 - 1 ;
        end
        if(counter2 == 3'b111)begin
            ADD_DATA_checker <= 1; //(means that we should send another address for reading in the next time) so we will go to READ_ADD state
        end
    end


end
endmodule