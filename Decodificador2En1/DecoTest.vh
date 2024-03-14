module decodificador_2_a_4 ( 
	xx,
	yy,
	clk,
	enabledecrinx,
	enabledecrouty,
	rinx,
	routy
	) ;

input [1:0] xx;
input [1:0] yy;
input  clk;
input  enabledecrinx;
input  enabledecrouty;
inout [3:0] rinx;
inout [3:0] routy;
