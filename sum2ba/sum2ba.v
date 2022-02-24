/*
 * Antonio Aguilar
 * Sumador aritmetico de 2 bits
*/

module sum2ba(input[1:0] a, b, input ci, output co, output[1:0] so);
	assign {co, so} = a + b + ci;
endmodule
