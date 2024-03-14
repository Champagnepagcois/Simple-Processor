module contador_y_decodificador ( 
	clk,
	reset,
	enabledecroutx,
	xx,
	salida_contador,
	routx
	) ;

input  clk;
input  reset;
input  enabledecroutx;
input [1:0] xx;
inout [1:0] salida_contador;
inout [3:0] routx;
