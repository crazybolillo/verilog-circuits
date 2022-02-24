/*
 * Antonio Aguilar
 * Mux 8 a 1 comportamental
*/

module mux81c(input in0, in1, in2, in3, in4, in5, in6, in7, input[2:0] sel, output reg out);
	always @(sel)
	begin
		if (sel == 0)
			out = in0;
		else if (sel == 1)
			out = in1;
		else if (sel == 2)
			out = in2;
		else if (sel == 3)
			out = in3;
		else if (sel == 4)
			out = in4;
		else if (sel == 5)
			out = in5;
		else if (sel == 6)
			out = in6;
		else
			out = in7;
	end

//	always @(sel)
//	begin
//		case (sel)
//			0: out = in0;
//			1: out = in1;
//			2: out = in2;
//			3: out = in3;
//			4: out = in4;
//			5: out = in5;
//			6: out = in6;
//			7: out = in7;
//		endcase
//	end
endmodule
