/*
* Antonio Aguilar
* ALU 4 bits
*/

module alu44(input[1:0] ope, input[3:0] a, b, output reg[4:0] out);
	wire[4:0] or_op, and_op, not_op, plus_op;
	assign or_op = a | b;
	assign and_op = a & b;
	assign not_op = ~{1'b1, a};
	assign plus_op = a + b;
	
	always @(*)
	begin
		case(ope)
			0: out = or_op;
			1: out = and_op;
			2: out = not_op;
			3: out = plus_op;
		endcase
	end

endmodule
