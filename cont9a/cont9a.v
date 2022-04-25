/**
 * Antonio Aguilar
 * Contador 7 segmentos
 */
module cont9a(input clk, rst, ctrl, output [6:0]segment);
	wire prescaled_clk, count_clk;
	wire [3:0]bcd_count;

	assign count_clk = rst ? clk : prescaled_clk;
	escalador u0	(clk, rst, prescaled_clk);
	cont9 u1		(count_clk, rst, ctrl, bcd_count);
	bcd7s u2		(bcd_count, segment);
endmodule
