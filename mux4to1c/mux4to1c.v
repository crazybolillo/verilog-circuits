/*
 * Antonio Aguilar
 * Multiplexor 4 a 1 compartamental
*/

module mux4to1c(input a, b, c, d, input [1:0] sel, output reg out);
	always @(sel)
	begin
		if (sel == 0)
			out = a;
		else if (sel == 1)
			out = b;
		else if (sel == 2)
			out = c;
		else
			out = d;
	end

//	always @(sel)
//	begin
//		case(sel)
//			0: out = a;
//			1: out = b;
//			2: out = c;
//			3: out = d;
//		endcase
//	end
endmodule
