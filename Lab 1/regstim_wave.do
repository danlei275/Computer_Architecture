onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /regstim/dut/ReadRegister1
add wave -noupdate /regstim/dut/ReadRegister2
add wave -noupdate /regstim/dut/WriteRegister
add wave -noupdate /regstim/dut/WriteData
add wave -noupdate /regstim/dut/clk
add wave -noupdate /regstim/dut/RegWrite
add wave -noupdate /regstim/dut/ReadData1
add wave -noupdate /regstim/dut/ReadData2
add wave -noupdate /regstim/dut/registers
add wave -noupdate /regstim/dut/regEnable
add wave -noupdate /regstim/dut/decodeEn
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {436990354 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 5000
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {20908593 ps} {20910109 ps}
