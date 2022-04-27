/*
* Antonio Aguilar
* ALU 4 bits 8 operaciones
*/

module alu_4_4_8(input[2:0] ope, input[3:0] a, b, output reg[4:0] out);
	wire[4:0] or_op, and_op, xor_op, xnor_op, nota_op, notb_op, plus_op, minus_op;
	assign or_op = a | b;
	assign and_op = a & b;
	xor(xor_op, a, b);
	xnor(xnor_op, a, b);
	assign nota_op = ~{1'b1, a};
	assign notb_op = ~{1'b1, b};
	assign plus_op = a + b;
	assign minus_op = a - b;
	
	always @(*)
	begin
		case(ope)
			0: out = or_op;
			1: out = and_op;
			2: out = xor_op;
			3: out = xnor_op;
			4: out = nota_op;
			5: out = notb_op;
			6: out = plus_op;
			7: out = minus_op;
		endcase
	end

endmodule