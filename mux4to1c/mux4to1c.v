/*
 * Antonio Aguilar
 * Multiplexor 4 a 1 compartamental
*/

module mux4to1c(input a, b, c, d, input [1:0] sel, output reg out);
	always @(sel)
	begin
		case(sel)
			0: out = a;
			1: out = b;
			2: out = c;
			3: out = d;
		endcase
	end
endmodule
