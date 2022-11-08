`timescale 1 ns/10 ps
module semaforo_tb;
	localparam period = 10;
	localparam tick_limit = 2;

	reg[4:0] counter;
	reg [7:0]total_counter;
	reg clk, rst, stop;
	
	wire red, yellow, green;
	
	semaforo semf(clk, rst, stop, red, yellow, green);
	
	initial begin
		counter = 5'b0;
		total_counter = 8'b0;
		rst = 1;
		#period;
		rst =  0;
		stop = 0;
	end
	
	always begin
		clk = 1;
		#period;
		clk = 0;
		#period;
	end
	
	always @(posedge clk) begin
		total_counter = total_counter + 1;
		if (!rst && !stop)
			counter = counter + 1;
		if (total_counter == 255)
			$stop;
	end
	
	always @(posedge red) begin
		$display("Going Red -> Green Ticks: %d", counter);
		counter = 0;
	end
	
	always @(posedge yellow) begin
		$display("Going Yellow -> Red Ticks: %d", counter);
		counter = 0;
	end
	
	always @(posedge green) begin
			$display("Going Green -> Yellow Ticks: %d", counter);
			counter = 0;
	end
endmodule
