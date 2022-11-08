module semaforo(input clk, rst, stop, output red, yellow, green);
	reg[4:0] counter;
	reg redreg, yellowreg, greenreg;
	
	assign red = stop | redreg;
	assign yellow = !stop & yellowreg;
	assign green = !stop & greenreg;
	
	always @(posedge clk) begin
		if (rst) begin
			counter = 0;
			redreg = 0;
			yellowreg = 0;
			greenreg = 0;
		end
		else if (!stop) begin
			counter = counter + 1;
			if ((redreg | yellowreg | greenreg) == 0)
				redreg = 1;
			else if (redreg == 1 && counter == 10) begin
				counter = 0;
				redreg = 0;
				yellowreg = 1;
			end
			else if (yellowreg == 1 && counter == 3) begin
				counter = 0;
				yellowreg = 0;
				greenreg = 1;
			end
			else if (greenreg == 1 && counter == 20) begin
				counter = 0;
				greenreg = 0;
				redreg = 1;
			end
		end
	end
endmodule
