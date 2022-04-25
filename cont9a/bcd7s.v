//DECODIFICADOR BINARIO-7SEGMENTOS
//JOEL CHAVEZ

//MODULO
module bcd7s(bcd,segmentos);
	//puertos
	//sentido	tipo	tamaño	nombre
	input					[3:0]		bcd;
	output		reg	[6:0]		segmentos;
	//alambres y registros
	
//ASIGNACIONES
	always@(bcd)
	begin
		case(bcd)
							 //gfedcba
			1: segmentos=7'b1111001;
			2: segmentos=7'b0100100;
			3: segmentos=7'b0110000;
			4: segmentos=7'b0011001;
			5: segmentos=7'b0010010;
			6: segmentos=7'b0000010;
			7: segmentos=7'b1111000;
			8: segmentos=7'b0000000;
			9: segmentos=7'b0011000;
			default: segmentos=7'b1000000;
		endcase
	end
endmodule
