module cu ( 
	i,
	t,
	clk,
	extern,
	gin,
	addsub,
	gout,
	ain,
	enabledecrinxanddone,
	enabledecroutx,
	enabledecrouty
	) ;

input [1:0] i;
input [1:0] t;
input  clk;
inout  extern;
inout  gin;
inout  addsub;
inout  gout;
inout  ain;
inout  enabledecrinxanddone;
inout  enabledecroutx;
inout  enabledecrouty;
