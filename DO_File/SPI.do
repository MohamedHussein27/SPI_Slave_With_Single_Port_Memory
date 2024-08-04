vlib work
vlog SPI_SLAVE.v RAM.v SPI_Wrapper.v SPI_Wrapper_tb.v
vsim -voptargs=+acc work.SPI_Wrapper_tb
add wave -position insertpoint  \
sim:/SPI_Wrapper_tb/dut/SPI/IDLE \
sim:/SPI_Wrapper_tb/dut/SPI/CHK_CMD \
sim:/SPI_Wrapper_tb/dut/SPI/WRITE \
sim:/SPI_Wrapper_tb/dut/SPI/READ_ADD \
sim:/SPI_Wrapper_tb/dut/SPI/READ_DATA \
sim:/SPI_Wrapper_tb/dut/SPI/MOSI \
sim:/SPI_Wrapper_tb/dut/SPI/tx_valid \
sim:/SPI_Wrapper_tb/dut/SPI/clk \
sim:/SPI_Wrapper_tb/dut/SPI/rst_n \
sim:/SPI_Wrapper_tb/dut/SPI/ss_n \
sim:/SPI_Wrapper_tb/dut/SPI/tx_data \
sim:/SPI_Wrapper_tb/dut/SPI/MISO \
sim:/SPI_Wrapper_tb/dut/SPI/rx_valid \
sim:/SPI_Wrapper_tb/dut/SPI/rx_data \
sim:/SPI_Wrapper_tb/dut/SPI/cs \
sim:/SPI_Wrapper_tb/dut/SPI/ns \
sim:/SPI_Wrapper_tb/dut/SPI/ADD_DATA_checker \
sim:/SPI_Wrapper_tb/dut/SPI/counter1 \
sim:/SPI_Wrapper_tb/dut/SPI/counter2 \
sim:/SPI_Wrapper_tb/dut/SPI/bus
add wave -position insertpoint  \
sim:/SPI_Wrapper_tb/dut/Ram/MEM_DEPTH \
sim:/SPI_Wrapper_tb/dut/Ram/ADDR_SIZE \
sim:/SPI_Wrapper_tb/dut/Ram/clk \
sim:/SPI_Wrapper_tb/dut/Ram/rst_n \
sim:/SPI_Wrapper_tb/dut/Ram/rx_valid \
sim:/SPI_Wrapper_tb/dut/Ram/din \
sim:/SPI_Wrapper_tb/dut/Ram/dout \
sim:/SPI_Wrapper_tb/dut/Ram/tx_valid \
sim:/SPI_Wrapper_tb/dut/Ram/memory \
sim:/SPI_Wrapper_tb/dut/Ram/addr_wr \
sim:/SPI_Wrapper_tb/dut/Ram/addr_re
run -all