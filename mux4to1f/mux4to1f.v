/*
 * Equipo 1
 * Seccion D04
 * Multiplexor 4 a 1 funcional
*/

module mux4to1f(input a, b, c, d, input [1:0] sel, output out);
	assign out = (a & !sel[0] & !sel[1]) | 
		(b & !sel[1] & sel[0]) | 
		(c & sel[1] & !sel[0]) |
		(d & sel[1] & sel[0]);
endmodule
