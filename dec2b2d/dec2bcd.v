/*
 * Codificador decimal a bcd
*/

module dec2bcd(input [9:0]dec, output reg [3:0]out);
	always @(dec)
	begin
		if (dec[9] == 1)
			out = 1;
		else if (dec[8] == 1)
			out = 2;
		else if (dec[7] == 1)
			out = 3;
		else if (dec[6] == 1)
			out = 4;
		else if (dec[5] == 1)
			out = 5;
		else if (dec[4] == 1)
			out = 6;
		else if (dec[3] == 1)
			out = 7;
		else if (dec[2] == 1)
			out = 8;
		else if (dec[1] == 1)
			out = 9;
		else if (dec[0] == 1)
			out = 0;
	end
	
endmodule
