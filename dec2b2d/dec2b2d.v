/*
 * Antonio Aguilar
 * Codificador digimal a binario 2 digitos
*/

module dec2b2d(input rst, input [9:0]dig, output reg [3:0] uni, dec);
	reg state;
	reg[3:0] value;
	parameter unit = 1, decim = 0;
	
	always @(dig)
	begin
		if (dig[9] == 1)
			value = 1;
		else if (dig[8] == 1)
			value = 2;
		else if (dig[7] == 1)
			value = 3;
		else if (dig[6] == 1)
			value = 4;
		else if (dig[5] == 1)
			value = 5;
		else if (dig[4] == 1)
			value = 6;
		else if (dig[3] == 1)
			value = 7;
		else if (dig[2] == 1)
			value = 8;
		else if (dig[1] == 1)
			value = 9;
		else if (dig[0] == 1)
			value = 0;
	end
	
	always @(dig or rst)
	begin
		if (rst)
			{uni, dec} = 0;
		else 
		begin
			case (state)
				unit:
				begin
					uni = value;
					state = decim;
				end
				decim:
				begin
					dec = value;
					state = unit;
				end
			endcase
		end
	end
endmodule
