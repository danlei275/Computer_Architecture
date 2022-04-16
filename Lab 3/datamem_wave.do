onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /datamem_testbench/dut/address
add wave -noupdate /datamem_testbench/dut/write_enable
add wave -noupdate /datamem_testbench/dut/read_enable
add wave -noupdate /datamem_testbench/dut/write_data
add wave -noupdate /datamem_testbench/dut/clk
add wave -noupdate /datamem_testbench/dut/xfer_size
add wave -noupdate /datamem_testbench/dut/read_data
add wave -noupdate /datamem_testbench/dut/aligned_address
add wave -noupdate /datamem_testbench/dut/i
add wave -noupdate /datamem_testbench/dut/j
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
WaveRestoreZoom {0 ps} {1 ns}
