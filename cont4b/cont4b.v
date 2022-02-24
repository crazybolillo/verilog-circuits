/*
 * Antonio Aguilar
 * Contador BCD 4 bits
*/

module cont4b(input clk, rst, ctrl, output reg[3:0] count);
	always @(posedge clk)
	begin
		if (rst)
			count = 0;
		else if (ctrl)
			count = count - 1;
		else
			count = count + 1;
	end
endmodule
