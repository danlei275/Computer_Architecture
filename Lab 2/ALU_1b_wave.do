onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /ALU_1b_testbench/dut/sel
add wave -noupdate /ALU_1b_testbench/dut/a
add wave -noupdate /ALU_1b_testbench/dut/b
add wave -noupdate /ALU_1b_testbench/dut/cIn
add wave -noupdate /ALU_1b_testbench/dut/r
add wave -noupdate /ALU_1b_testbench/dut/cOut
add wave -noupdate /ALU_1b_testbench/dut/t010
add wave -noupdate /ALU_1b_testbench/dut/t100
add wave -noupdate /ALU_1b_testbench/dut/t101
add wave -noupdate /ALU_1b_testbench/dut/t110
add wave -noupdate /ALU_1b_testbench/dut/notB
add wave -noupdate /ALU_1b_testbench/dut/bControl
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
WaveRestoreZoom {59050 ps} {60050 ps}
