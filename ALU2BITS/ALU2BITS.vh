module alu ( 
	a,
	b,
	op,
	result,
	carry
	) ;

input [1:0] a;
input [1:0] b;
input  op;
inout [1:0] result;
inout  carry;
