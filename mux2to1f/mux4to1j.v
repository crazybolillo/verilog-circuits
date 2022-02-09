/*
 * Equipo 1
 * Seccion D04
 * Multiplexor 4 a 1 jerarquico
*/

module mux4to1j(input a, b, c, d, input[1:0] sel, output out);
	wire n1, n2;
	
	mux2to1f mux0(a, b, sel[0], n1);
	mux2to1f mux1(c, d, sel[0], n2);
	mux2to1f mux2(n1, n2, sel[1], out);
endmodule
