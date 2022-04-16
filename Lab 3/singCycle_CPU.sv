// top level module for single cycle CPU
// Main components: dataPath, control, program counter

module singCycle_CPU (reset, clk);
	input logic reset, clk;
	logic [31:0] instruction;
	logic [2:0] ALUOp;
	logic Reg2Loc, RegWrite, ALUSrc, MemWrite, 
					MemToReg, immSize, shiftSel;
	logic zeroFlag;
	logic BrTaken, UncondBr;
	logic setFlag, mem_read;
	logic negative, zero, overflow, carry_out;
	
	// Flags[0] = negative; Flags[1] = zero; FLags[2] = overflow; Flags[3] = carry_out;
	logic [3:0] Flags;
	
	// datapath - executes instruction
	dataPath data_execute (.instruction, .Reg2Loc, .RegWrite, 
											 .ALUSrc, .ALUOp, .MemWrite, .MemToReg,
											 .immSize, .shiftSel, .clk,
											 .negative, .zero, .overflow, .carry_out, .mem_read);
											 
	// control unit - outputs control flags based on instruction
	control cntrl_CPU (.instr(instruction), .mem_read, .zeroFlag(zero), .Reg2Loc, .ALUSrc, .MemToReg, 
					.RegWrite, .MemWrite, .BrTaken, .UncondBr, .ALUOp, .setFlag, 
					.immSize, .shiftSel, .negative(Flags[0]), .overflow(Flags[2]));
					
	// program counter - outputs instruction to execute
	program_counter PC (.instruction, .UncondBr, .BrTaken, .clk, .reset);
	
	always_ff @(posedge clk) begin
		if (reset) begin
			Flags <= '0;
		end
		else if (setFlag) begin
			Flags[0] <= negative;
			Flags[1] <= zero;
			Flags[2] <= overflow;
			Flags[3] <= carry_out;
		end
	end
	
endmodule

`timescale 1ps/1ps
module singCycle_CPU_testbench();
	logic clk, reset;
	
	parameter ClockDelay = 10000;

	singCycle_CPU dut (.*);

   initial begin // Set up the clock
		clk <= 0;
		forever #(ClockDelay/2) clk <= ~clk;
	end
	
	initial begin
		reset <= 1'b1; repeat(2)@(posedge clk);
		reset <= 1'b0; @(posedge clk);
		repeat(12)@(posedge clk);
		$stop;
	end
endmodule
