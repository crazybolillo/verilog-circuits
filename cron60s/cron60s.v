/*
 * Antonio Aguilar
 * Contador 60 segundos
*/

module cron60s(input clk, ctrl, rst, output reg[3:0] seg, dec);
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
			{seg, dec} = 0;
		else if (state == run)
			if (seg == 9)
				begin
					seg = 0;
					if (dec == 5)
					begin
						dec = 0;
					end
					else
						dec = dec + 1;
				end
			else
				seg = seg + 1;
	end
	
endmodule
