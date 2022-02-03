/*
 * Antonio Aguilar
 * Multiplicador de 1 bit
*/

module mul1b(input x, y, si, ci, output cout, sout);
	sum1b adder0 (si, (x & y), ci, cout, sout);
endmodule
