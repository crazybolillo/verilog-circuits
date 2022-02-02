/*
 * Antonio Aguilar
 * Multiplexor 8 a 1 jerarquico, utilizando multiplexores 2 a 1.
*/

module mux8to1j(input in0, in1, in2, in3, in4, in5, in6, in7, input [2:0]sel, output out);
	wire x1, x2, x3, x4, x5, x6;
	mux2to1 mux0(in0, in1, sel[0], x1);
	mux2to1 mux1(in2, in3, sel[0], x2);
	mux2to1 mux2(in4, in5, sel[0], x3);
	mux2to1 mux3(in6, in7, sel[0], x4);
	
	mux2to1 mux4(x1, x2, sel[1], x5);
	mux2to1 mux5(x3, x4, sel[1], x6);
	
	mux2to1 mux6(x5, x6, sel[2], out);
endmodule
