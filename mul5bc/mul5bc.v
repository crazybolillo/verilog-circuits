/*
 * Antonio Aguilar
 * Multiplicador 5 bits comportamental
*/

module mul5bc(input[4:0] x, y, output[9:0] out);
	reg[8:0] r0, r1, r2, r3, r4;	

	always @(x or y)
	begin
		{r0, r1, r2, r3, r4} = 0;
		if (y[0]) r0 = x;
		if (y[1])r1 = {x, 1'b0};
		if (y[2]) r2  = {x, 2'b00};
		if (y[3]) r3 = {x, 3'b000};
		if (y[4]) r4 = {x, 4'b0000};
	end
	
//	always @(x or y)
//	begin
//		r0 = y[0] ? x : 0;
//		r1 = y[1] ? {x, 1'b0} : 0;
//		r2 = y[2] ? {x, 2'b00} : 0;
//		r3 = y[3] ? {x, 3'b000} : 0;
//		r4 = y[4] ? {x, 4'b0000} : 0;
//	end

//	always @(x or y)
//	begin
//		{r0, r1, r2, r3, r4} = 0; 
//		case (y[0])
//			1: r0 = x;
//		endcase
//		case (y[1])
//			1: r1 = {x, 1'b0};
//		endcase
//		case (y[2])
//			1: r2 = {x, 2'b00};
//		endcase
//		case (y[3])
//			1: r3 = {x, 3'b000};
//		endcase
//		case (y[4])
//			1: r4 = {x, 4'b0000};
//		endcase
//	end
	assign out = r0 + r1 + r2 + r3 + r4;
endmodule
