module Mux41_1BIT(Out, Sel0, Sel1, Value0, Value1, Value2, Value3);
	input Sel0, Sel1, Value0, Value1, Value2, Value3;
	output Out;
	wire mux1, mux2;
	Mux21_1BIT mux_1(mux1, Sel0, Value0, Value1);
	Mux21_1BIT mux_2(mux2, Sel0, Value2, Value3);
	Mux21_1BIT mux_3(Out, Sel1, mux1, mux2);
endmodule