/*
 * Antonio Aguilar
 * Detector paridad 4 bits
*/

module detpar4b(input [3:0] num, output reg out);
//	always @(num)
//	begin
//		if (num[0] == 1)
//			out = 0;
//		else
//			out = 1;
//	end

	always @(num)
	begin
		casez(num)
			4'b???1:
				out = 0;
			default:
				out = 1;
		endcase
	end
endmodule
