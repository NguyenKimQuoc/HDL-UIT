module Register(Out, Clk, In);
	parameter N = 0;
	output [N-1:0]Out;
	input [N-1:0]In;
	input Clk;
	D_FlipFlop dff[N-1:0](.Q(Q), .D(In), .Clk(Clk), .Pre_n(1), .Clr_n(1));
endmodule