/*
 * Antonio Aguilar
 * Multiplicador 3 bits comportamental
*/

module mul3bc(input[2:0] x, y, output[5:0] out);
	reg[4:0] r0, r1, r2;	

	always @(x or y)
	begin
		if (y[0]) r0 = x;
		else r0 = 0;
		
		if (y[1])r1 = {x, 1'b0};
		else r1 = 0;
		
		if (y[2]) r2  = {x, 2'b00};
		else r2 = 0;
	end
	assign out = r0 + r1 + r2;
	
//	always @(x or y)
//	begin
//		r0 = y[0] ? x : 0;
//		r1 = y[1] ? {x, 1'b0} : 0;
//		r2 = y[2] ? {x, 2'b00} : 0;
//	end
//	assign out = r0 + r1 + r2;

//	always @(x or y)
//	begin
//		case (y)
//			0: out = 0;
//			1: out = {2'b00, x};
//			2: out = {1'b0, x, 1'b0};
//			3: out = {2'b00, x} + {1'b0, x, 1'b0};
//			4: out = {x, 2'b00};
//			5: out = {x, 2'b00} + {2'b00, x};
//			6: out = {x, 2'b00} + {1'b0, x, 1'b0};
//			7: out = {x, 2'b00} + {1'b0, x, 1'b0} + {2'b00, x};
//		endcase
//	end
endmodule
