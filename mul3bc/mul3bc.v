/*
 * Antonio Aguilar
 * Multiplicador 3 bits comportamental
*/

module mul3bc(input [2:0] x, y, output reg [5:0] out);
	always @(x or y)
	begin
		case (y)
			0: out = 0;
			1: out = {2'b00, x};
			2: out = {1'b0, x, 1'b0};
			3: out = {2'b00, x} + {1'b0, x, 1'b0};
			4: out = {x, 2'b00};
			5: out = {x, 2'b00} + {2'b00, x};
			6: out = {x, 2'b00} + {1'b0, x, 1'b0};
			7: out = {x, 2'b00} + {1'b0, x, 1'b0} + {2'b00, x};
		endcase
	end
endmodule
