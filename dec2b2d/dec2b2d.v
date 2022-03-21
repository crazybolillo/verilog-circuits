/*
 * Antonio Aguilar
 * Codificador digimal a binario 2 digitos
*/

module dec2b2d(input rst, input [9:0]dig, output reg [3:0] uni, dec);
	reg state;
	reg[3:0] value;
	parameter unit = 0, decim = 1;
	
	always @(dig or rst)
	begin
		if(rst)
		begin
			{uni, dec} = 0;
			state = unit;
		end
		else
		begin
			if (dig[9] == 1)
				uni = 1;
			else if (dig[8] == 1)
				uni = 2;
			else if (dig[7] == 1)
				uni = 3;
			else if (dig[6] == 1)
				uni = 4;
			else if (dig[5] == 1)
				uni = 5;
			else if (dig[4] == 1)
				uni = 6;
			else if (dig[3] == 1)
				uni = 7;
			else if (dig[2] == 1)
				uni = 8;
			else if (dig[1] == 1)
				uni = 9;
			else if (dig[0] == 1)
				uni = 0;
		end
	end
endmodule
