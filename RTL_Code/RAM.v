module RAM #(parameter MEM_DEPTH = 256 , parameter ADDR_SIZE = 8)(
    input clk , rst_n , rx_valid,
    input [9:0] din,
    output reg [7:0] dout,
    output reg tx_valid
);
// Creating the memory array
reg [ADDR_SIZE-1:0] memory [MEM_DEPTH-1:0]; //address size is the same as memory width

reg [7:0] addr_wr ; //write address for writing data in it
reg [7:0] addr_re ; //read address for reading data from it

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        dout <= 0;
        tx_valid <= 0;
        addr_wr <= 0;
        addr_re <= 0;
    end else begin
        if (rx_valid) begin //once rx_valid is high then the din bus is completed and hence we will check on the first two bits 
            if({din[9],din[8]} == 2'b00) //write address 
                addr_wr <= din[7:0] ;
            else if ({din[9],din[8]} == 2'b01)//write data in the address specified earlier
                memory[addr_wr] <= din[7:0] ;
            else if ({din[9],din[8]} == 2'b10)//read address 
                addr_re <= din[7:0] ;
            else if ({din[9],din[8]} == 2'b11) //Read data in the address specified  earlier and then sends the data in tx_data and make the tx_valid high
            begin
                dout <= memory[addr_re];
                tx_valid <= 1;
            end
        end
    end
end
endmodule