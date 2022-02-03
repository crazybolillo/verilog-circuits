/*
 * Antonio Aguilar
 * Sumador completo de 4 bits jerarquico
*/

module sum4bj(input a0, b0, a1, b1, a2, b2, a3, b3, cin, output s0, s1, s2, s3, cout);
	wire cout1, cout2, cout3;
	
	sum1b adder0(a3, b3, cin, cout1, s0);
	sum1b adder1(a2, a2, cout1, cout2, s1);
	sum1b adder2(a1, b1, cout2, cout3, s2);
	sum1b adder3(a3, b3, cout3, cout, s3);
endmodule
