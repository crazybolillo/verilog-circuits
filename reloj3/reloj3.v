/*
 * Antonio Aguilar
 * Reloj de 59 minutos con cronometro de 59 segundos
**/

module reloj3(input clk, rst, mode_btn, cron_btn, output[3:0] mu, md);
	wire[3:0] rlj_mu, rlj_md, cron_mu, cron_md;
	reg state;
	parameter reloj_mode = 0, cron_mode = 1;
	
	reloj1 u0(clk, rst, rlj_mu, rlj_md);
	cron60s u1(clk, cron_btn, rst, cron_mu, cron_md);
	
	assign mu = (state == reloj_mode) ? rlj_mu : cron_mu;
	assign md = (state == reloj_mode) ? rlj_md : cron_md;
	
	always @(posedge clk)
	begin
		if (rst)
			state = reloj_mode;
		else
			case (state)
				reloj_mode: begin
					if (mode_btn)
						state = cron_mode;
				end
				
				cron_mode: begin
					if (mode_btn)
						state = reloj_mode;
				end
			endcase
	end
	
endmodule
