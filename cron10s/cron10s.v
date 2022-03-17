/*
 * Antonio Aguilar
 * Cronometro a 10 segundos
*/

module cron10s(input clk, rst, ctrl, output reg[3:0] seg);
	reg state;
	parameter pause = 0, run = 1;
	
	always @(posedge clk)
	begin
		if (ctrl)
			begin
				if (state == run)
					state = pause;
				else
					state = run;
			end
	end
	
	always @(posedge clk)
	begin
		if (rst)
			seg = 0;
		else if (state == run)
			if (seg == 9)
				seg = 0;
			else
				seg = seg + 1;
	end
endmodule
