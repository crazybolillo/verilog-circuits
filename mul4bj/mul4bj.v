/*
 * Antonio Aguilar
 * Multiplicador de 4 bits jerarquico
*/

module mul4bj(input [3:0]x, y, output [7:0]z);
	wire [15:0]cx, sx[15:0];

	// x, y, si, ci, cout, sout
	// Primer renglon
	mul1b u0(x[0], y[0], 0, 0, cx[0], sx[0]);
	mul1b u1(x[1], y[0], 0, cx[0], cx[1], sx[1]);
	mul1b u2(x[2], y[0], 0, cx[1], cx[2], sx[2]);
	mul1b u3(x[3], y[0], 0, cx[2], cx[3], sx[3]);
	
	// Segundo renglon
	mul1b u4(x[0], y[1], sx[1], 0, cx[4], sx[4]);
	mul1b u5(x[1], y[1], sx[2], cx[4], cx[5], sx[5]);
	mul1b u6(x[2], y[1], sx[3], cx[5], cx[6], sx[6]);
	mul1b u7(x[3], y[1], cx[3], cx[6], cx[7], sx[7]);
	
	// Tercer renglon
	mul1b u8(x[0], y[2], sx[5], 0, cx[8], sx[8]);
	mul1b u9(x[1], y[2], sx[6], cx[8], cx[9], sx[9]);
	mul1b u10(x[2], y[2], sx[7], cx[9], cx[10], sx[10]);
	mul1b u11(x[3], y[2], cx[7], cx[10], cx[11], sx[11]);
	
	// Cuarto renglon
	mul1b u12(x[0], y[3], sx[9], 0, cx[12], sx[12]);
	mul1b u13(x[1], y[3], sx[10], cx[12], cx[13], sx[13]);
	mul1b u14(x[2], y[3], sx[11], cx[13], cx[14], sx[14]);
	mul1b u15(x[3], y[3], cx[11], cx[14], cx[15], sx[15]);
	
	
	assign z[0] = sx[0];
	assign z[1] = sx[4];
	assign z[2] = sx[8];
	assign z[3] = sx[12];
	assign z[4] = sx[13];
	assign z[5] = sx[14];
	assign z[6] = sx[15];
	assign z[7] = cx[15];

endmodule
