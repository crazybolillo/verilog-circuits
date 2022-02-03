/*
 * Antonio Aguilar
 * Sumador completo de 1 bit
*/

module sum1b(input a, b, cin, output cout, out);
	assign out = (a ^ b) ^ cin;
	assign cout = ((a ^ b) & cin) | (a & b);
endmodule
