/*
 * Antonio Aguilar
 * Contador BCD 4 bits
*/

module cont9(input clk, rst, ctrl, output reg[3:0] count);
	always @(posedge clk)
	begin
		if (rst)
			count = 0;
		else if (ctrl)
			if (count == 0)
				count = 9;
			else
				count = count - 1;
		else if (count == 9)
			count = 0;
		else
			count = count + 1;
	end
endmodule