vlib work
vlog -f list.txt
vsim -voptargs=+acc work.SPI_Wrapper_tb
add wave -position insertpoint sim:/SPI_Wrapper_tb/dut/SPI/*
run -all