module Lab1 (readReg1, readReg2,
				writeReg, writeDat,		
				readDat1, readDat2, clk);
// May need write enable? 
input logic [4:0] readReg1, readReg2, writeReg;
input logic [63:0] writeDat;

output logic [63:0] readDat1, readDat2;

endmodule

module decoder (
	input  logic [4:0]  binary_in   , //  5 bit binary input
	output logic [31:0] out , //  32-bit out 
	input  logic enable        //  Enable for the decoder
	);
	
assign out = (enable) ? (1<<binary_in) : 32'b0;
endmodule


module  mux (
input  wire  din_0      , // Mux first input
input  wire  din_1      , // Mux Second input
input  wire  sel        , // Select input
output wire  mux_out      // Mux output
);
//-------------Code Start-----------------
assign mux_out = (sel) ? din_1 : din_0;
 
endmodule //End Of Module mux