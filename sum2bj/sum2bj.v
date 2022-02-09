/*
 * Equipo 1
 * Seccion D04
 * Sumador de 2 bits jerarquico
*/

module sum2bj(input[1:0] a, b, input cin, output[1:0] sum, output cout);
	wire sw;
	
	// A, B, Carry In, Carry Out, Sum
	sum1b adder0(a[0], b[0], cin, sw, sum[0]);
	sum1b adder1(a[1], b[1], sw, cout, sum[1]);
endmodule
