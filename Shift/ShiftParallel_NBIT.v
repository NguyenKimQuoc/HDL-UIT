module ShiftParallel_NBIT(Out, Clk, In, IL, IR, Sel0, Sel1);
	parameter N = 8;
	output [N-1:0] Out;
	input [N-1:0] In;
	input Clk, IL, IR, Sel0, Sel1;
	/*ShiftParallel_1BIT sh0(Out[0], Clk, Sel0, Sel1, In[0], IR, Out[1]);
	ShiftParallel_1BIT sh1(Out[1], Clk, Sel0, Sel1, In[1], Out[0], Out[2]);
	ShiftParallel_1BIT sh2(Out[2], Clk, Sel0, Sel1, In[2], Out[1], Out[3]);
	ShiftParallel_1BIT sh3(Out[3], Clk, Sel0, Sel1, In[3], Out[2], Out[4]);
	ShiftParallel_1BIT sh4(Out[4], Clk, Sel0, Sel1, In[4], Out[3], Out[5]);
	ShiftParallel_1BIT sh5(Out[5], Clk, Sel0, Sel1, In[5], Out[4], Out[6]);
	ShiftParallel_1BIT sh6(Out[6], Clk, Sel0, Sel1, In[6], Out[5], Out[7]);
	ShiftParallel_1BIT sh7(Out[7], Clk, Sel0, Sel1, In[7], Out[6], IL);*/
	ShiftParallel_1BIT sh[N-1:0](
		.Out(Out),
		.Value1(In),
		.Value2({Out[N - 2:0], IR}),	// {out[6:0], in_right}
		.Value3({IL, Out[N - 1:1]}),	// {in_left , out[7:1]}
		.Sel0(Sel0),
		.Sel1(Sel1),
		.Clk(Clk)
	);
endmodule