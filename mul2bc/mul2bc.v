/*
 * Antonio Aguilar
 * Multiplicador de 2 bits compartamental
*/

module mul2bc(input [1:0] x, y, output reg [3:0] out);
	always @(x or y)
	begin
		case (y)
			0: out = 0;
			1: out = {2'b00, x};
			2: out = {1'b0, x, 1'b0};
			3: out = {2'b00, x} + {1'b0, x, 1'b0};
		endcase
	end
endmodule
