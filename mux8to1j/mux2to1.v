/*
 * Antonio Aguilar
 * Multiplexor 2 a 1 
*/

module mux2to1(input a, b, sel, output out);
	assign out = (a & !sel) | (b & sel);
endmodule
