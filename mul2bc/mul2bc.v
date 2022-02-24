/*
 * Antonio Aguilar
 * Multiplicador de 2 bits compartamental
*/

module mul2bc(input [1:0] x, y, output [3:0] out);
	reg[3:0] r0, r1;

	always @(x or y)
	begin
		r0 = y[0] ? {2'b00, x} : 0;
		r1 = y[1] ? {x, 1'b0} : 0;
	end
	assign out = r0 + r1;
	
//	always @(x or y)
//	begin
//		if (y[0] == 1)
//			r0 = {2'b00, x};
//		else
//			r0 = 0;
//		if (y[1] == 1)
//			r1 = {1'b0, x, 1'b0};
//		else 
//			r1 = 0;
//	end
//	assign out = r0 + r1;

//	always @(x or y)
//	begin
//		case (y)
//			0: out = 0;
//			1: out = {2'b00, x};
//			2: out = {1'b0, x, 1'b0};
//			3: out = {2'b00, x} + {1'b0, x, 1'b0};
//		endcase
//	end
endmodule
