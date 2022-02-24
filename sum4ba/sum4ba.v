/*
 * Antonio Aguilar
 * Sumador aritmetico de 4 bits
*/

module sum4ba(input[3:0] a, b, input ci, output co, output[3:0] so);
	assign {co, so} = a + b + ci;
endmodule