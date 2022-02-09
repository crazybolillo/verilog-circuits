/*
 * Equipo 1
 * Seccion D04
 * Sumador 3 bits jerarquico
*/

module sum3bj(input [2:0] a, b, input cin, output [2:0] sum, output cout);
	wire [1:0] sw;
	
	sum1b adder0(a[0], b[0], cin, sw[0], sum[0]);
	sum1b adder1(a[1], b[1], sw[0], sw[1], sum[1]);
	sum1b adder2(a[2], b[2], sw[1], cout, sum[2]);
endmodule
