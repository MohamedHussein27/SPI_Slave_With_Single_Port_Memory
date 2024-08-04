# First write the name for the project (SPI_Interface_Model) then select the path to the folder that has the design codes and the run file
create_project SPI_Interface_Model2 "D:/Personal Courses/Kareem_Waseem_Diploma/projects/SPI_Interface/tcl_exp" -part xc7a35ticpg236-1L -force

# Add source files & XDC files
add_files {SPI_SLAVE.v RAM.v SPI_Wrapper.v SPI_for_tcl.xdc}

# Elaborate Design (Will open the schematic)
synth_design -rtl -top SPI_Wrapper > elab.log

# Save Schematic
write_schematic -force -format pdf elaborated_schematic.pdf

# Synthesize Design
launch_runs synth_1 > synth.log

# Open GUI (Schematic)
wait_on_run synth_1
open_run synth_1

# Save Schematic
write_schematic -force -format pdf synthesized_schematic.pdf

# Generate netlist
write_verilog -force SPI_Model_netlist.v

# Implementation
launch_runs impl_1 -to_step write_bitstream 

# Open GUI (Schematic & Device view)
wait_on_run impl_1
open_run impl_1