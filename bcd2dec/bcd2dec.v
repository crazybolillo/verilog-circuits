/*
 * Antonio Aguilar
 * Codificador bcd a dec
*/

module bcd2dec(input [3:0]bcd, output reg [9:0]out);
	always @(bcd)
	begin
		case(bcd)
			 0: out = 1;
			 9: out = 2;
			 8: out = 4;
			 7: out = 8;
			 6: out = 16;
			 5: out = 32;
			 4: out = 64;
			 3: out = 128;
			 2: out = 256;
			 1: out = 512;
			 default: out = 0;
		 endcase
	end
endmodule
