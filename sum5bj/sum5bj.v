/*
 * Equipo 1
 * Seccion D04
 * Sumador de 5 bits jerarquico
*/

module sum5bj(input [4:0] a, b , input cin, output [4:0] sum, output cout);
	wire [3:0] sw;
	
	sum1b adder0(a[0], b[0], cin, sw[0], sum[0]);
	sum1b adder1(a[1], b[1], sw[0], sw[1], sum[1]);
	sum1b adder2(a[2], b[2], sw[1], sw[2], sum[2]);
	sum1b adder3(a[3], b[3], sw[2], sw[3], sum[3]);
	sum1b adder4(a[4], b[4], sw[3], cout, sum[4]);
endmodule
