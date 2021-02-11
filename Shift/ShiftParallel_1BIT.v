module ShiftParallel_1BIT(Out, Clk, Sel0, Sel1, Value1, Value2, Value3);
	output Out;
	input Clk, Sel0, Sel1, Value1, Value2, Value3;
	wire D;
	Mux41_1BIT mux(D, Sel0, Sel1, Out, Value1, Value2, Value3);
	D_FlipFlop dff(Out, D, Clk);
endmodule