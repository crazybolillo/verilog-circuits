/*
 * Antonio Aguilar
 * Calendario
*/

module calendario(input clk, rst, output reg[3:0] du, dd, mu, md);

	always @(posedge clk)
	begin
		if (rst)
			du = 1;
		else if ((du == 9) || (du == 1 && dd == 3))
			du = 1;
		else
			du = du + 1;
	end
	
	always @(posedge clk)
	begin
		if (rst)
			dd = 0;
		else if ((du == 9) || (du == 1 && dd == 3))
			if (dd == 3)
				dd = 0;
			else 
				dd = dd + 1;
	end
	
	always @(posedge clk)
	begin 
		if (rst)
			mu = 1;
		else if (dd == 3 && du == 1)
			if ((mu == 9) || (mu == 2 && md == 1))
				mu = 1;
			else
				mu = mu + 1;
	end
	
	always @(posedge clk)
	begin 
		if (rst)
			md = 0;
		else if ((dd == 3 && du == 1 && mu == 9) || (dd == 3 && du == 1 && md == 1 && mu == 2))
			if (mu == 1)
				md = 0;
			else
				md = md + 1;
	end
endmodule
