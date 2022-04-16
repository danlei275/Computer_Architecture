onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix decimal /alustim/dut/A
add wave -noupdate -radix decimal /alustim/dut/B
add wave -noupdate /alustim/dut/cntrl
add wave -noupdate -radix decimal /alustim/dut/result
add wave -noupdate /alustim/dut/negative
add wave -noupdate /alustim/dut/zero
add wave -noupdate /alustim/dut/overflow
add wave -noupdate /alustim/dut/carry_out
add wave -noupdate /alustim/dut/cOut
add wave -noupdate /alustim/dut/nors
add wave -noupdate /alustim/dut/ands
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {20299999314 ps} 0}
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
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {20299999050 ps} {20300000050 ps}
