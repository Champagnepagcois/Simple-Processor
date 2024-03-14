module twotwobitregisters ( 
	clk,
	reset,
	write_enable_1,
	write_enable_2,
	data_in_1,
	data_in_2,
	dataex_in,
	extern,
	dataex_out,
	read_enable_1,
	read_enable_2,
	data_out_1,
	data_out_2
	) ;

input  clk;
input  reset;
input  write_enable_1;
input  write_enable_2;
input [1:0] data_in_1;
input [1:0] data_in_2;
input [1:0] dataex_in;
input  extern;
inout [1:0] dataex_out;
input  read_enable_1;
input  read_enable_2;
inout [1:0] data_out_1;
inout [1:0] data_out_2;
