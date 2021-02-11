module RegisterFileCell(OutA, OutB, Clk, ReadA, ReadB, WS, In);
	output OutA, OutB;
	input Clk, ReadA, ReadB, WS, In;
	wire [1:0]w;
	wire Q, D;
	and g0(w[0], WS, In);
	and g1(w[1], Q, ~WS);
	or g2(D, w[0], w[1]);
	D_FlipFlop dff(.Q(Q), .D(D), .Clk(Clk));
	bufif1 buf0(OutA, Q, ReadA);
	bufif1 buf1(OutB, Q, ReadB);
endmodule
module RegisterFileCell_NBIT(OutA, OutB, Clk, ReadA, ReadB, WS, In);
	parameter N = 32;
	output [N-1:0]OutA, OutB;
	input [N-1:0]In;
	input Clk, ReadA, ReadB, WS;
	RegisterFileCell rgCell[N-1:0](
		.OutA(OutA[N-1:0]), 
		.OutB(OutB[N-1:0]), 
		.Clk(Clk), 
		.ReadA(ReadA), 
		.ReadB(ReadB), 
		.WS(WS), 
		.In(In[N-1:0])
	);
endmodule