/*
 * Antonio Aguilar
 * Multiplexor 8 a 1 descrito de manera estructural
*/

module mux8to1esc(input in0, in1, in2, in3, in4, in5, in6, in7, input [2:0]sel, output out);
	wire ns0 = !sel[0];
	wire ns1 = !sel[1];
	wire ns2 = !sel[2];
	wire in0_and = in0 & ns0 & ns1 & ns2;
	wire in1_and = in1 & sel[0] & ns1 & ns2;
	wire in2_and = in2 & ns0 & sel[1] & ns2;
	wire in3_and = in3 & sel[0] & sel[1] & ns2;
	wire in4_and = in4 & ns0 & ns1 & sel[2];
	wire in5_and = in5 & sel[0] & ns1 & sel[2];
	wire in6_and = in6 & ns0 & sel[1] & sel[2];
	wire in7_and = in7 & sel[0] & sel[1] & sel[2];
	
	assign out = in0_and | in1_and | in2_and | in3_and | in4_and | in5_and | in6_and | in7_and;
endmodule
