/*
 * Equipo 1
 * Seccion D04
 * Multiplicador de 5 bits jerarquico
*/

module mul5bj(input [4:0] x, y, output[9:0] z);
	wire [24:0] cx, sx;
	// x, y, si, ci, cout, sout
	// Primer renglon
	mul1b u0(x[0], y[0], 0, 0, cx[0], sx[0]);
	mul1b u1(x[1], y[0], 0, cx[0], cx[1], sx[1]);
	mul1b u2(x[2], y[0], 0, cx[1], cx[2], sx[2]);
	mul1b u3(x[3], y[0], 0, cx[2], cx[3], sx[3]);
	mul1b u4(x[4], y[0], 0, cx[3], cx[4], sx[4]);
	
	// Segundo renglon
	mul1b u5(x[0], y[1], sx[1], 0, cx[5], sx[5]);
	mul1b u6(x[1], y[1], sx[2], cx[5], cx[6], sx[6]);
	mul1b u7(x[2], y[1], sx[3], cx[6], cx[7], sx[7]);
	mul1b u8(x[3], y[1], sx[4], cx[7], cx[8], sx[8]);
	mul1b u9(x[4], y[1], cx[4], cx[8], cx[9], sx[9]);
	
	// Tercer renglon
	mul1b u10(x[0], y[2], sx[6], 0, cx[10], sx[10]);
	mul1b u11(x[1], y[2], sx[7], cx[10], cx[11], sx[11]);
	mul1b u12(x[2], y[2], sx[8], cx[11], cx[12], sx[12]);
	mul1b u13(x[3], y[2], sx[9], cx[12], cx[13], sx[13]);
	mul1b u14(x[4], y[2], cx[9], cx[13], cx[14], sx[14]);
	
	// Cuarto renglon
	mul1b u15(x[0], y[3], sx[11], 0, cx[15], sx[15]);
	mul1b u16(x[1], y[3], sx[12], cx[15], cx[16], sx[16]);
	mul1b u17(x[2], y[3], sx[13], cx[16], cx[17], sx[17]);
	mul1b u18(x[3], y[3], sx[14], cx[17], cx[18], sx[18]);
	mul1b u19(x[4], y[3], cx[14], cx[18], cx[19], sx[19]);
	
	// Quinto renglon
	mul1b u20(x[0], y[4], sx[16], 0, cx[20], sx[20]);
	mul1b u21(x[1], y[4], sx[17], cx[20], cx[21], sx[21]);
	mul1b u22(x[2], y[4], sx[18], cx[21], cx[22], sx[22]);
	mul1b u23(x[3], y[4], sx[19], cx[22], cx[23], sx[23]);
	mul1b u24(x[4], y[4], cx[19], cx[23], cx[24], sx[24]);
	
	assign z[0] = sx[0];
	assign z[1] = sx[5];
	assign z[2] = sx[10];
	assign z[3] = sx[15];
	assign z[4] = sx[20];
	assign z[5] = sx[21];
	assign z[6] = sx[22];
	assign z[7] = sx[23];
	assign z[8] = sx[24];
	assign z[9] = cx[24];
endmodule
