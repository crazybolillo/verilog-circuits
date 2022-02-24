/*
 * Antonio Aguilar
 * Multiplicador 4 bits comportamental
*/

module mul4bc(input[3:0] x, y, output[7:0] out);
	reg[6:0] r0, r1, r2, r3;	

//	always @(x or y)
//	begin
//		if (y[0]) r0 = x;
//		else r0 = 0;
//		
//		if (y[1])r1 = {x, 1'b0};
//		else r1 = 0;
//		
//		if (y[2]) r2  = {x, 2'b00};
//		else r2 = 0;
//		
//		if (y[3]) r3 = {x, 3'b000};
//		else r3 = 0;
//	end
	
	always @(x or y)
	begin
		r0 = y[0] ? x : 0;
		r1 = y[1] ? {x, 1'b0} : 0;
		r2 = y[2] ? {x, 2'b00} : 0;
		r3 = y[3] ? {x, 3'b000} : 0;
	end

//	always @(x or y)
//	begin
//		{r0, r1, r2, r3} = 0; 
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
//	end
	assign out = r0 + r1 + r2 + r3;
endmodule
