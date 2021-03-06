# Create work library
vlib work

# Compile Verilog
#     All Verilog files that are part of this design should have
#     their own "vlog" line below.
vlog "./mux2_1.sv"
vlog "./mux8_1.sv"
vlog "./mux4_1.sv"
vlog "./mux_32_1.sv"
vlog "./mux_64x32_1.sv"
vlog "./decoder3_8.sv"
vlog "./decoder2_4.sv"
vlog "./math.sv"
vlog "./register.sv"
vlog "./regfile.sv"
vlog "./ALU_1b.sv"
vlog "./alu.sv"
vlog "./control.sv"
vlog "./singCycle_CPU.sv"
vlog "./add_width.sv"
vlog "./datamem.sv"
vlog "./add_width.sv"
vlog "./fullAdder.sv"
vlog "./instructmem.sv"
vlog "./program_counter.sv"
vlog "./datamem.sv"
vlog "./dataPath.sv"
vlog "./alustim.sv"

# Call vsim to invoke simulator
#     Make sure the last item on the line is the name of the
#     testbench module you want to execute.
#vsim -voptargs="+acc" -t 1ps -lib work dataPath_testbench
vsim -voptargs="+acc" -t 1ps -lib work singCycle_CPU_testbench
#vsim -voptargs="+acc" -t 1ps -lib work control_testbench
#vsim -voptargs="+acc" -t 1ps -lib work dataPath_testbench
#vsim -voptargs="+acc" -t 1ps -lib work alustim

# Source the wave do file
#     This should be the file that sets up the signal window for
#     the module you are testing.
#do control_wave.do
do singCycle_CPU_wave.do
#do alustim_wave.do
#do dataPath_wave.do

# Set the window types
view wave
view structure
view signals

# Run the simulation
run -all

# End
