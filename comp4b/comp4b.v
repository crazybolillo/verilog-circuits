/*
 * Antonio Aguilar
 * Comparador de 4 bits
*/

module comp4b(input [3:0] a, b, output reg [1:0] out);
	always @(a or b)
	begin
		if (a > b) 
			out = 1;
		else if (a < b)
			out = 2;
		else
			out = 0;
	end
endmodule
