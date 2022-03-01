/*
 * Antonio Aguilar
 * Contador hasta 99
*/

module cont99(input clk, rst, ctrl, output[3:0] dec, output[3:0] uni);
	wire dec_clk;
	cont9 x0(clk, rst, ctrl, uni);
	
	assign dec_clk = uni == 9 ? 0: 1;
	cont9 x1(dec_clk, rst, ctrl, dec);
endmodule
