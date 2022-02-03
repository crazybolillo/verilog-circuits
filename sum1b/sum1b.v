/*
 * Antonio Aguilar
 * Sumador completo de 1 bit
*/

module sum1b(input a, b, cin, output cout, out);
	assign cout = (b & cin) | (a & !b & cin) | (a & b & !cin);
	xor(out, a, b, cin);
endmodule
