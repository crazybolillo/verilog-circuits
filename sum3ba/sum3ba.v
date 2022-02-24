/*
 * Antonio Aguilar
 * Sumador aritmetico de 3 bits
*/

module sum3ba(input[2:0] a, b, input ci, output co, output[2:0] so);
	assign {co, so} = a + b + ci;
endmodule