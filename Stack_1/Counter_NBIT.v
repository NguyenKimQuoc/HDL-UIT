module Counter_NBIT(Q, Cout, Clk, D, E, Load, In, Set, Reset);
	parameter N = 10;
	output [N-1:0]Q;
	output Cout;
	input [N-1:0]In;
	input Clk, D, Load, E, Set, Reset;
	wire [N-2:0]w;
	Counter_1BIT counter[N-1:0](
		.Q(Q[N-1:0]), 
		.Cout({Cout, w[N-2:0]}), 
		.D(D), 
		.Load(Load), 
		.Cin({w[N-2:0], E}), 
		.In(In[N-1:0]), 
		.Clk(Clk),
		.Set(Set),
		.Reset(Reset)
	);
endmodule