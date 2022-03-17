/*
 * Antonio Aguilar
 * Reloj
*/

module reloj2(input clk, rst, output reg[3:0] mu, md, hu, hd);
	reg[5:0] seg;
	
	initial
	begin
		hd = 2;
		hu = 3;
		md = 5;
		mu = 8;
	end
	
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
	
	always @(posedge clk)
	begin 
		if (rst)
			hu = 0;
		else if (md == 5 && mu == 9 && seg == 59)
			if ((hu == 9) || (hd == 2 && hu == 3))
				hu = 0;
			else
				hu = hu + 1;
	end
	
	always @(posedge clk)
	begin 
		if (rst)
			hd = 0;
		else if (hu == 3 && md == 5 && mu == 9 && seg == 59)
			if (hd == 2)
				hd = 0;
			else
				hd = hd + 1;
	end
endmodule