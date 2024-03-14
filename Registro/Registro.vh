module fourtwobitregisters ( 
	clk,
	reset,
	write_enable_1,
	write_enable_2,
	write_enable_3,
	write_enable_4,
	data_in,
	read_enable_1,
	read_enable_2,
	read_enable_3,
	read_enable_4,
	data_out_1,
	data_out_2,
	data_out_3,
	data_out_4
	) ;

input  clk;
input  reset;
input  write_enable_1;
input  write_enable_2;
input  write_enable_3;
input  write_enable_4;
input [1:0] data_in;
input  read_enable_1;
input  read_enable_2;
input  read_enable_3;
input  read_enable_4;
inout [1:0] data_out_1;
inout [1:0] data_out_2;
inout [1:0] data_out_3;
inout [1:0] data_out_4;
