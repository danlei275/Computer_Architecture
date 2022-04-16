onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /program_counter_testbench/dut/instruction
add wave -noupdate /program_counter_testbench/dut/UncondBr
add wave -noupdate /program_counter_testbench/dut/BrTaken
add wave -noupdate /program_counter_testbench/dut/clk
add wave -noupdate /program_counter_testbench/dut/reset
add wave -noupdate -radix unsigned /program_counter_testbench/dut/instr_addr
add wave -noupdate /program_counter_testbench/dut/PC4
add wave -noupdate /program_counter_testbench/dut/SE_condAddr19
add wave -noupdate /program_counter_testbench/dut/SE_BrAddr26
add wave -noupdate /program_counter_testbench/dut/addr
add wave -noupdate /program_counter_testbench/dut/UncondrBr
add wave -noupdate /program_counter_testbench/dut/sum_PCandImm
add wave -noupdate /program_counter_testbench/dut/carry_PCandImm
add wave -noupdate /program_counter_testbench/dut/nextPC
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {23700 ps} {24700 ps}
