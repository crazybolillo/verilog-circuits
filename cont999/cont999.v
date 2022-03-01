/*
 * Antonio Aguilar
 * Contador hasta 999
*/

module cont999(input clk, rst, ctrl, output[3:0]cent, output[3:0] dec, output[3:0] uni);
	wire dec_clk, cent_clk;
	
	assign dec_clk = uni == 9 ? 0: 1;
	assign cent_clk = dec == 9 ? 0 : 1;
	
	cont9 x0(clk, rst, ctrl, uni);
	cont9 x1(dec_clk, rst, ctrl, dec);
	cont9 x2(cent_clk, rst, ctrl, cent);
endmodule
