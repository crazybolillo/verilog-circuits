/*
 * Antonio Aguilar
 * Reloj
*/

module reloj1(input clk, rst, output reg[3:0] mu, md);
	reg[5:0] seg;
	always @(posedge clk)
	begin
		if (rst)
			seg = 0;
		else if (seg == 59)
			seg = 0;
		else
			seg = seg + 1;
	end
	
	always @(posedge clk)
	begin
		if (rst)
			mu = 0;
		else if (seg == 59)
			if (mu == 9)
				mu = 0;
			else 
				mu = mu + 1;
	end
	
	always @(posedge clk)
	begin 
		if (rst)
			md = 0;
		else if (mu ==9 && seg == 59)
			if (md == 5)
				md = 0;
			else
				md = md + 1;
	end
endmodule
