module SPI_Wrapper_tb();
parameter MEM_DEPTH = 256 ;
parameter ADDR_SIZE = 8 ;
reg clk , ss_n , MOSI , rst_n ;
wire MISO;


SPI_Wrapper #(.MEM_DEPTH(MEM_DEPTH),.ADDR_SIZE(ADDR_SIZE)) dut (clk, ss_n, MOSI , rst_n , MISO);
initial begin
    clk = 0;
    forever #10 clk = ~clk; // 20ns period clock
end
initial begin

//************************************ first scenario ********************************\\
    rst_n = 0;  //reset first so that the first state is IDLE
    @(negedge clk);
    rst_n = 1;
    ss_n = 0; //go to CHK_CMD state
    //first the write address process
    #20 MOSI = 0; //to decide it's a write process
    #20 MOSI = 0;
    #20 MOSI = 0; //the first two bits are zeroes

    //we will write in the address : 8'b1111_0000
    #20 MOSI = 1;
    #20 MOSI = 1;
    #20 MOSI = 1;
    #20 MOSI = 1;
    #20 MOSI = 0;
    #20 MOSI = 0;
    #20 MOSI = 0;
    #20 MOSI = 0;
    //address finished
    #20 ss_n = 1; //end protocol
    #60 ; //time to wait until the next process comes


    ss_n = 0; //go to CHK_CMD state
    //second comes write data process
    #20 MOSI = 0; //to decide it's a write process
    #20 MOSI = 0;
    #20 MOSI = 1; //the first two bits are 2'b10
    repeat(8) begin
        #20 MOSI = $random; //randomize the data 
    end
    #20 ss_n = 1; //end protocol
    #60 ; //time to wait until the next process comes


    ss_n = 0; //go to CHK_CMD state
    //third comes read address process
    #20 MOSI = 1; //to decide it's a read process
    #20 MOSI = 1;
    #20 MOSI = 0; //the first two bits are 2'b10

    //we will choose the same address we wrote data in earlier (which was : 8'b1111_0000) to be the address of reading data in the next state
    #20 MOSI = 1;
    #20 MOSI = 1;
    #20 MOSI = 1;
    #20 MOSI = 1;
    #20 MOSI = 0;
    #20 MOSI = 0;
    #20 MOSI = 0;
    #20 MOSI = 0;
    //address finished   
    #20 ss_n = 1; //end protocol
    #60 ; //time to wait until the next process comes


    ss_n = 0; //go to CHK_CMD state
    //fourth comes read data process
    #20 MOSI = 1; //to decide it's a read process
    #20 MOSI = 1; 
    #20 MOSI = 1; //the first two bits are 2'b11

    //read data process will automatically read data from the address we chose in the read address state (which was : 8'b1111_0000)
    repeat(8) begin
        #20 MOSI = $random; //randomize the data as we won't use it (dummy data)
    end
    #200 ss_n = 1; //200 = 20 + (9 * 20) as we will wait for another nine clocks (one for tx_valid and 8 for tx_data to be serialized) and then end protocol
    #60 ; //time to wait until the next process comes


    //************************************ second scenario ********************************\\
    
    rst_n = 0;  //reset again to start a new process
    #20 rst_n = 1;  
        ss_n = 0;

    #20 MOSI = 0; //to decide it's a write process
    #20 MOSI = 0;
    #20 MOSI = 0; //the first two bits are zeroes

    //we will write in the address : 8'b0000_1111
    #20 MOSI = 0;
    #20 MOSI = 0;
    #20 MOSI = 0;
    #20 MOSI = 0;
    #20 MOSI = 1;
    #20 MOSI = 1;
    #20 MOSI = 1;
    #20 MOSI = 1;
    //address finished
    #20 ss_n = 1; //end protocol
    #60 ; //time to wait until the next process comes


    ss_n = 0; //go to CHK_CMD state
    //second comes write data process
    #20 MOSI = 0; //to decide it's a write process
    #20 MOSI = 0;
    #20 MOSI = 1; //the first two bits are 2'b10
    repeat(8) begin
        #20 MOSI = 1; //write data which is all ones 
    end
    #20 ss_n = 1; //end protocol
    #60 ; //time to wait until the next process comes


    ss_n = 0; //go to CHK_CMD state
    //third comes read address process
    #20 MOSI = 1; //to decide it's a read process
    #20 MOSI = 1;
    #20 MOSI = 0; //the first two bits are 2'b10

    //we will choose the same address we wrote data in earlier (which was : 8'b000_1111) to be the address of reading data in the next state
    #20 MOSI = 0;
    #20 MOSI = 0;
    #20 MOSI = 0;
    #20 MOSI = 0;
    #20 MOSI = 1;
    #20 MOSI = 1;
    #20 MOSI = 1;
    #20 MOSI = 1;
    //address finished   
    #20 ss_n = 1; //end protocol
    #60 ; //time to wait until the next process comes


    ss_n = 0; //go to CHK_CMD state
    //fourth comes read data process
    #20 MOSI = 1; //to decide it's a read process
    #20 MOSI = 1; 
    #20 MOSI = 1; //the first two bits are 2'b11

    //read data process will automatically read data from the address we chose in the read address state (which was : 8'b1111_0000)
    repeat(8) begin
        #20 MOSI = $random; //randomize the data as we won't use it (dummy data)
    end
    #200 ss_n = 1; //200 = 20 + (9 * 20) as we will wait for another nine clocks (one for tx_valid and 8 for tx_data to be serialized) and then end protocol
    #60 ; //time to wait until the next process comes
    
    $display("simulation finished");
    $stop;
end
endmodule