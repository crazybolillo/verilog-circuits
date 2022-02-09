/*
 * Equipo 1
 * Seccion D04
 * Multiplicador jerarquico de 2 bits
*/

module mul2bj(input [1:0] x, y, output [3:0] z);
	wire [3:0] cx, sx;
	// x, y, si, ci, cout, sout
	// Primer renglon
	mul1b u0(x[0], y[0], 0, 0, cx[0], sx[0]);
	mul1b u1(x[1], y[0], 0, cx[0], cx[1], sx[1]);
	
	// Segundo renglon
	mul1b u2(x[0], y[1], sx[1], 0, cx[2], sx[2]);
	mul1b u3(x[1], y[1], cx[1], cx[2], cx[3], sx[3]);
	
	assign z[0] = sx[0];
	assign z[1] = sx[2];
	assign z[2] = sx[3];
	assign z[3] = cx[3];
endmodule
