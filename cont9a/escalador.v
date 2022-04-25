//MODULO
module	escalador(clk,rst,sal);
	input							clk,rst;
	output	reg				sal;
	reg				[24:0]	contador;
	reg							clk2;

//ASIGNACIONES
	//señales
//	assign clk2=(contador==24999999)?	0:1;
	
	always@(posedge clk)
	begin
		if(rst)
			begin
			contador=0;
			clk2=0;
			end
		else
			if(contador==24999999)
				begin
				contador=0;
				clk2=0;
				end
			else
				begin
				contador=contador+1;
				clk2=1;
				end
	end
	
	always@(posedge clk2)
	begin
		if(rst)
			sal=0;
		else
			sal=sal+1;
	end
//	assign sal=contador[23];
endmodule
