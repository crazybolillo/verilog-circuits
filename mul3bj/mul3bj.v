/*
 * Antonio Aguilar
 * Multiplicador de 3 bits jerarquico
*/

module mul3bj(input [2:0]x, y, output [5:0]z);
	wire [8:0]cx, sx[8:0];

	// x, y, si, ci, cout, sout
	mul1b u0(x[0], y[0], 0, 0, cx[0], sx[0]);
	mul1b u1(x[1], y[0], 0, cx[0], cx[1], sx[1]);
	mul1b u2(x[2], y[0], 0, cx[1], cx[2], sx[2]);
	mul1b u3(x[0], y[1], sx[1], 0, cx[3], sx[3]);
	mul1b u4(x[1], y[1], sx[2], cx[3], cx[4], sx[4]);
	mul1b u5(x[2], y[1], cx[2], cx[4], cx[5], sx[5]);
	mul1b u6(x[0], y[2], sx[4], 0, cx[6], sx[6]);
	mul1b u7(x[1], y[2], sx[5], cx[6], cx[7], sx[7]);
	mul1b u8(x[2], y[2], cx[5], cx[7], cx[8], sx[8]);
	
	assign z[0] = sx[0];
	assign z[1] = sx[3];
	assign z[2] = sx[6];
	assign z[3] = sx[7];
	assign z[4] = sx[8];
	assign z[5] = cx[8];

endmodule
