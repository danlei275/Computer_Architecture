// Test bench for ALU
`timescale 1ns/10ps

// Meaning of signals in and out of the ALU:

// Flags:
// negative: whether the result output is negative if interpreted as 2's comp.
// zero: whether the result output was a 64-bit zero.
// overflow: on an add or subtract, whether the computation overflowed if the inputs are interpreted as 2's comp.
// carry_out: on an add or subtract, whether the computation produced a carry-out.

// cntrl			Operation						Notes:
// 000:			result = B						value of overflow and carry_out unimportant
// 010:			result = A + B
// 011:			result = A - B
// 100:			result = bitwise A & B		value of overflow and carry_out unimportant
// 101:			result = bitwise A | B		value of overflow and carry_out unimportant
// 110:			result = bitwise A XOR B	value of overflow and carry_out unimportant

module alustim();

	parameter delay = 100000;

	logic		[63:0]	A, B;
	logic		[2:0]		cntrl;
	logic		[63:0]	result;
	logic					negative, zero, overflow, carry_out ;

	parameter ALU_PASS_B=3'b000, ALU_ADD=3'b010, ALU_SUBTRACT=3'b011, ALU_AND=3'b100, ALU_OR=3'b101, ALU_XOR=3'b110;
	

	alu dut (.A, .B, .cntrl, .result, .negative, .zero, .overflow, .carry_out);

	// Force %t's to print in a nice format.
	initial $timeformat(-9, 2, " ns", 10);

	integer i;
	logic [63:0] test_val;
	logic test_overflow;
	initial begin
		// Test Pass B
		$display("%t testing PASS_B operations", $time);
		cntrl = ALU_PASS_B;
		for (i=0; i<100; i++) begin
			A = $random(); B = $random();
			#(delay);
			assert(result == B && negative == B[63] && zero == (B == '0));
		end
		
		// Test addition - special cases and then random cases
		$display("%t testing addition", $time);
		cntrl = ALU_ADD;
		A = 64'h0000000000000001; B = 64'h0000000000000001;
		#(delay);
		assert(result == 64'h0000000000000002 && carry_out == 0 && overflow == 0 && negative == 0 && zero == 0);
		
		// special test cases: result == 0, result is negative, overflow occurs
		A = 64'h0000000000000000; B = 64'h0000000000000000;
		#(delay);
		assert(result == 64'h0000000000000000 && carry_out == 0 && overflow == 0 && negative == 0 && zero == 1);
		
	   // test if overflow detection works correctly
		A = 64'h7FFFFFFFFFFFFFFF; B = 64'h7FFFFFFFFFFFFFFF;
		test_val = A+B;
		test_overflow = (A[63]!= test_val[63] && B[63] != test_val[63]);
		#(delay);
		assert(result == A+B && carry_out == 0 && overflow == test_overflow && negative == 1 && zero == 0);
		
		// Random addition testing - carry_out = 0
		for (i=0; i<50; i++) begin
			A = $random(); B = $random();
			A[63] = 1'b0;  B[63] = 1'b0;
			test_val = A+B;
			test_overflow = (A[63]!= test_val[63] && B[63] != test_val[63]);
			#(delay);
			assert(result == test_val);
			assert(negative == test_val[63]);
			assert(zero == (test_val == '0));
			assert(overflow == test_overflow);
			assert(carry_out == 0);
		end
		// random addition testing carry_out == 1
		for (i=0; i<50; i++) begin
			A = $random(); B = $random();  
			A[63] = 1'b1;  B[63] = 1'b1;
			test_val = A+B;
			test_overflow = (A[63]!= test_val[63] && B[63] != test_val[63]);
			#(delay);
			assert(result == test_val);
			assert(negative == test_val[63]);
			assert(zero == (test_val == '0));
			assert(overflow == test_overflow);
			assert(carry_out == 1);
		end
		
		// Test Subtraction
		$display("%t testing subtraction", $time);
		cntrl = ALU_SUBTRACT;
		A = 64'h0000000000000001; B = 64'h0000000000000001;
		#(delay);
		assert(result == 64'h0000000000000000 && carry_out == 1 && overflow == 0 && negative == 0 && zero == 1);
		// Random Subtraction testing - carry_out = 0
		for (i=0; i<50; i++) begin
			A = $random(); B = $random();
			A[63] = 1'b0;  B[63] = 1'b1;
			test_val = A-B;
			test_overflow = (A[63]!= test_val[63] && ~B[63] != test_val[63]);
			#(delay);
			assert(result == test_val);
			assert(negative == test_val[63]);
			assert(zero == (test_val == '0));
			assert(overflow == test_overflow);
			assert(carry_out == 0);
		end
		// Random Subtraction - carry_out = 1
		for (i=0; i<50; i++) begin
			A = $random(); B = $random();
			A[63] = 1'b1;  B[63] = 1'b0;
			test_val = A-B;
			test_overflow = (A[63]!= test_val[63] && ~B[63] != test_val[63]);
			#(delay);
			assert(result == test_val);
			assert(negative == test_val[63]);
			assert(zero == (test_val == '0));
			assert(overflow == test_overflow);
			assert(carry_out == 1);
		end
		
		// Testing AND
		$display("%t testing bitwise AND", $time);
		cntrl = ALU_AND;
		A = 64'h0000000010000001; B = 64'h0000000000000000;
		#(delay);
		assert(result == 64'h0000000000000000 && negative == 0 && zero == 1);
		// Random bitwise AND operations
		for (i=0; i<100; i++) begin
			A = $random(); B = $random();
			test_val = A & B;
			#(delay);
			assert(result == test_val);
			assert(negative == test_val[63]);
			assert(zero == (test_val == '0));
		end
		
		// Testing OR
		$display("%t testing bitwise OR", $time);
		cntrl = ALU_OR;
		A = 64'h0000000000000000; B = 64'h0000000000000000;
		#(delay);
		assert(result == 64'h0000000000000000 && negative == 0 && zero == 1);
		// Random bitwise AND operations
		for (i=0; i<100; i++) begin
			A = $random(); B = $random();
			test_val = A | B;
			#(delay);
			assert(result == test_val);
			assert(negative == test_val[63]);
			assert(zero == (test_val == '0));
		end
		
		// Testing bitwise XOR
		$display("%t testing bitwise XOR", $time);
		cntrl = ALU_XOR;
		A = 64'h1010101010101010; B = 64'h1010101010101010;
		#(delay);
		assert(result == 64'h0000000000000000 && negative == 0 && zero == 1);
		// Random bitwise AND operations
		for (i=0; i<100; i++) begin
			A = $random(); B = $random();
			test_val = A ^ B;
			#(delay);
			assert(result == test_val);
			assert(negative == test_val[63]);
			assert(zero == (test_val == '0));
		end		
		
	end
endmodule
