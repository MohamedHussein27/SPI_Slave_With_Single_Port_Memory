module SPI_Wrapper #(parameter MEM_DEPTH = 256 , parameter ADDR_SIZE = 8)(
    input clk , ss_n , MOSI , rst_n ,
    output MISO 
);
//this module is to connect between the SPI_SLAVE and RAM modules
wire [9:0] rxdata ;
wire [7:0] txdata ;
wire rx_valid , tx_valid ;

SPI_SLAVE SPI(
    .MOSI(MOSI),
    .MISO(MISO),
    .clk(clk),
    .ss_n(ss_n),
    .rst_n(rst_n),
    .rx_data(rxdata),
    .tx_data(txdata),
    .rx_valid(rx_valid),
    .tx_valid(tx_valid)
);

RAM #(MEM_DEPTH,ADDR_SIZE) Ram (
    .din(rxdata),
    .dout(txdata),
    .clk(clk),
    .rx_valid(rx_valid),
    .tx_valid(tx_valid),
    .rst_n(rst_n)
);
endmodule