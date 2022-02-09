/*
 * Antonio Aguilar
 * Equipo 1
 * Seccion D04
 * Multiplexor 2 a 1 estructural 
*/

module mux2to1e(input a, b, sel, output out);
	wire [2:0] x;
	assign x[0] = !sel;
	assign x[1] = x[0] & a;
	assign x[2] = sel & b;
	
	assign out = x[1] | x[2];
endmodule
