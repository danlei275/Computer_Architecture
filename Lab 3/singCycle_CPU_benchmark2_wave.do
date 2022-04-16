onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /singCycle_CPU_testbench/dut/reset
add wave -noupdate /singCycle_CPU_testbench/dut/clk
add wave -noupdate /singCycle_CPU_testbench/dut/instruction
add wave -noupdate /singCycle_CPU_testbench/dut/ALUOp
add wave -noupdate /singCycle_CPU_testbench/dut/Reg2Loc
add wave -noupdate /singCycle_CPU_testbench/dut/RegWrite
add wave -noupdate /singCycle_CPU_testbench/dut/ALUSrc
add wave -noupdate /singCycle_CPU_testbench/dut/MemWrite
add wave -noupdate /singCycle_CPU_testbench/dut/MemToReg
add wave -noupdate /singCycle_CPU_testbench/dut/immSize
add wave -noupdate /singCycle_CPU_testbench/dut/shiftSel
add wave -noupdate /singCycle_CPU_testbench/dut/zeroFlag
add wave -noupdate /singCycle_CPU_testbench/dut/BrTaken
add wave -noupdate /singCycle_CPU_testbench/dut/UncondBr
add wave -noupdate /singCycle_CPU_testbench/dut/setFlag
add wave -noupdate /singCycle_CPU_testbench/dut/negative
add wave -noupdate /singCycle_CPU_testbench/dut/zero
add wave -noupdate /singCycle_CPU_testbench/dut/overflow
add wave -noupdate /singCycle_CPU_testbench/dut/carry_out
add wave -noupdate /singCycle_CPU_testbench/dut/Flags
add wave -noupdate -radix unsigned /singCycle_CPU_testbench/dut/intruction_execution/ALU_result
add wave -noupdate -childformat {{{/singCycle_CPU_testbench/dut/intruction_execution/regist/registers[31]} -radix unsigned} {{/singCycle_CPU_testbench/dut/intruction_execution/regist/registers[30]} -radix unsigned} {{/singCycle_CPU_testbench/dut/intruction_execution/regist/registers[29]} -radix unsigned} {{/singCycle_CPU_testbench/dut/intruction_execution/regist/registers[28]} -radix unsigned} {{/singCycle_CPU_testbench/dut/intruction_execution/regist/registers[27]} -radix unsigned} {{/singCycle_CPU_testbench/dut/intruction_execution/regist/registers[26]} -radix unsigned} {{/singCycle_CPU_testbench/dut/intruction_execution/regist/registers[25]} -radix unsigned} {{/singCycle_CPU_testbench/dut/intruction_execution/regist/registers[24]} -radix unsigned} {{/singCycle_CPU_testbench/dut/intruction_execution/regist/registers[23]} -radix unsigned} {{/singCycle_CPU_testbench/dut/intruction_execution/regist/registers[22]} -radix unsigned} {{/singCycle_CPU_testbench/dut/intruction_execution/regist/registers[21]} -radix unsigned} {{/singCycle_CPU_testbench/dut/intruction_execution/regist/registers[20]} -radix unsigned} {{/singCycle_CPU_testbench/dut/intruction_execution/regist/registers[19]} -radix unsigned} {{/singCycle_CPU_testbench/dut/intruction_execution/regist/registers[18]} -radix unsigned} {{/singCycle_CPU_testbench/dut/intruction_execution/regist/registers[17]} -radix unsigned} {{/singCycle_CPU_testbench/dut/intruction_execution/regist/registers[16]} -radix unsigned} {{/singCycle_CPU_testbench/dut/intruction_execution/regist/registers[15]} -radix unsigned} {{/singCycle_CPU_testbench/dut/intruction_execution/regist/registers[14]} -radix unsigned} {{/singCycle_CPU_testbench/dut/intruction_execution/regist/registers[13]} -radix unsigned} {{/singCycle_CPU_testbench/dut/intruction_execution/regist/registers[12]} -radix unsigned} {{/singCycle_CPU_testbench/dut/intruction_execution/regist/registers[11]} -radix unsigned} {{/singCycle_CPU_testbench/dut/intruction_execution/regist/registers[10]} -radix unsigned} {{/singCycle_CPU_testbench/dut/intruction_execution/regist/registers[9]} -radix unsigned} {{/singCycle_CPU_testbench/dut/intruction_execution/regist/registers[8]} -radix unsigned} {{/singCycle_CPU_testbench/dut/intruction_execution/regist/registers[7]} -radix unsigned} {{/singCycle_CPU_testbench/dut/intruction_execution/regist/registers[6]} -radix unsigned} {{/singCycle_CPU_testbench/dut/intruction_execution/regist/registers[5]} -radix unsigned} {{/singCycle_CPU_testbench/dut/intruction_execution/regist/registers[4]} -radix unsigned} {{/singCycle_CPU_testbench/dut/intruction_execution/regist/registers[3]} -radix unsigned} {{/singCycle_CPU_testbench/dut/intruction_execution/regist/registers[2]} -radix unsigned} {{/singCycle_CPU_testbench/dut/intruction_execution/regist/registers[1]} -radix unsigned} {{/singCycle_CPU_testbench/dut/intruction_execution/regist/registers[0]} -radix unsigned}} -subitemconfig {{/singCycle_CPU_testbench/dut/intruction_execution/regist/registers[31]} {-height 15 -radix unsigned} {/singCycle_CPU_testbench/dut/intruction_execution/regist/registers[30]} {-height 15 -radix unsigned} {/singCycle_CPU_testbench/dut/intruction_execution/regist/registers[29]} {-height 15 -radix unsigned} {/singCycle_CPU_testbench/dut/intruction_execution/regist/registers[28]} {-height 15 -radix unsigned} {/singCycle_CPU_testbench/dut/intruction_execution/regist/registers[27]} {-height 15 -radix unsigned} {/singCycle_CPU_testbench/dut/intruction_execution/regist/registers[26]} {-height 15 -radix unsigned} {/singCycle_CPU_testbench/dut/intruction_execution/regist/registers[25]} {-height 15 -radix unsigned} {/singCycle_CPU_testbench/dut/intruction_execution/regist/registers[24]} {-height 15 -radix unsigned} {/singCycle_CPU_testbench/dut/intruction_execution/regist/registers[23]} {-height 15 -radix unsigned} {/singCycle_CPU_testbench/dut/intruction_execution/regist/registers[22]} {-height 15 -radix unsigned} {/singCycle_CPU_testbench/dut/intruction_execution/regist/registers[21]} {-height 15 -radix unsigned} {/singCycle_CPU_testbench/dut/intruction_execution/regist/registers[20]} {-height 15 -radix unsigned} {/singCycle_CPU_testbench/dut/intruction_execution/regist/registers[19]} {-height 15 -radix unsigned} {/singCycle_CPU_testbench/dut/intruction_execution/regist/registers[18]} {-height 15 -radix unsigned} {/singCycle_CPU_testbench/dut/intruction_execution/regist/registers[17]} {-height 15 -radix unsigned} {/singCycle_CPU_testbench/dut/intruction_execution/regist/registers[16]} {-height 15 -radix unsigned} {/singCycle_CPU_testbench/dut/intruction_execution/regist/registers[15]} {-height 15 -radix unsigned} {/singCycle_CPU_testbench/dut/intruction_execution/regist/registers[14]} {-height 15 -radix unsigned} {/singCycle_CPU_testbench/dut/intruction_execution/regist/registers[13]} {-height 15 -radix unsigned} {/singCycle_CPU_testbench/dut/intruction_execution/regist/registers[12]} {-height 15 -radix unsigned} {/singCycle_CPU_testbench/dut/intruction_execution/regist/registers[11]} {-height 15 -radix unsigned} {/singCycle_CPU_testbench/dut/intruction_execution/regist/registers[10]} {-height 15 -radix unsigned} {/singCycle_CPU_testbench/dut/intruction_execution/regist/registers[9]} {-height 15 -radix unsigned} {/singCycle_CPU_testbench/dut/intruction_execution/regist/registers[8]} {-height 15 -radix unsigned} {/singCycle_CPU_testbench/dut/intruction_execution/regist/registers[7]} {-height 15 -radix unsigned} {/singCycle_CPU_testbench/dut/intruction_execution/regist/registers[6]} {-height 15 -radix unsigned} {/singCycle_CPU_testbench/dut/intruction_execution/regist/registers[5]} {-height 15 -radix unsigned} {/singCycle_CPU_testbench/dut/intruction_execution/regist/registers[4]} {-height 15 -radix unsigned} {/singCycle_CPU_testbench/dut/intruction_execution/regist/registers[3]} {-height 15 -radix unsigned} {/singCycle_CPU_testbench/dut/intruction_execution/regist/registers[2]} {-height 15 -radix unsigned} {/singCycle_CPU_testbench/dut/intruction_execution/regist/registers[1]} {-height 15 -radix unsigned} {/singCycle_CPU_testbench/dut/intruction_execution/regist/registers[0]} {-height 15 -radix unsigned}} /singCycle_CPU_testbench/dut/intruction_execution/regist/registers
add wave -noupdate /singCycle_CPU_testbench/dut/intruction_execution/operation/A
add wave -noupdate /singCycle_CPU_testbench/dut/intruction_execution/operation/B
add wave -noupdate /singCycle_CPU_testbench/dut/intruction_execution/operation/result
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {17500 ps} 0}
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
WaveRestoreZoom {4290 ps} {21664 ps}
