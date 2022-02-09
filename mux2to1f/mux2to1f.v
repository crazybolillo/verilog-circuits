/*
 * Antonio Aguilar
 * Equipo 1
 * Seccion D04
 * Multiplexor 2 a 1 funcional 
*/

module mux2to1f(input a, b, sel, output out);
	assign out = (a & !sel) | (b & sel);
endmodule
