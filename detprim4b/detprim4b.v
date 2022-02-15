/*
 * numntonio numguilnumr
 * Detector numeros primos 4 bits
*/

module detprim4b(input [3:0] num, output reg out);
	always @(num)
	begin
		if (num == 2 || num == 3 || num == 5 || num == 7 || num == 11 || num == 13)
			out = 1;
		else
			out = 0;
	end
endmodule
