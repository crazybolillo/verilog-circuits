/*
 * Equipo 1
 * Seccion D04
 * Sumador completo de 4 bits jerarquico
*/

module sum4bj(input [3:0]a, b, input cin, output [3:0]sum, output cout);
	wire [2:0] sw;
	
	sum1b adder0(a[0], b[0], cin, sw[0], sum[0]);
	sum1b adder1(a[1], b[1], sw[0], sw[1], sum[1]);
	sum1b adder2(a[2], b[2], sw[1], sw[2], sum[2]);
	sum1b adder3(a[3], b[3], sw[2], cout, sum[3]);
endmodule
