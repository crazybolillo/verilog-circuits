/*
 * Antonio Aguilar
 * Sumador completo de 4 bits jerarquico
 * La salida de la suma se hizo de 5 bits aproposito para una visualizacion
 * mejor en el simulador, pero la en teoria la salida solo seria de 4 bits
 * junto con el carry.
*/

module sum4bj(input [3:0]a, b, input cin, output [4:0]sum, output cout);
	wire [2:0] sw;
	
	sum1b adder0(a[0], b[0], cin, sw[0], sum[0]);
	sum1b adder1(a[1], b[1], sw[0], sw[1], sum[1]);
	sum1b adder2(a[2], b[2], sw[1], sw[2], sum[2]);
	sum1b adder3(a[3], b[3], sw[2], cout, sum[3]);
	assign sum[4] = cout;
endmodule
