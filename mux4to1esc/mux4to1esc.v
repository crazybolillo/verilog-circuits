/*
 * Antonio Aguilar
 * Multiplexor 4 a 1 descrito de forma estructural
*/

module mux4to1esc(input a, b, c, d, input [1:0]sel, output out);
	wire x0 = !sel[0];
	wire x1 = x0;
	wire x2 = x0 & a;
	wire x3 = sel[0] & b;
	wire x4 = x1 & c;
	wire x5 = sel[0] & d;
	wire x6 = x2 | x3;
	wire x7 = x4 | x5;
	wire x8 = !sel[1];
	wire x9 = x6 & x8;
	wire x10 = sel[1] & x7;
	
	assign out = x9 | x10;
endmodule
	