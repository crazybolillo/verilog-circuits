/*
 * Antonio Aguilar
 * Sumador aritmetico de 5 bits
*/

module sum5ba(input[4:0] a, b, input ci, output co, output[4:0] so);
	assign {co, so} = a + b + ci;
endmodule