module Mux21_1BIT(Out, Sel, Value0, Value1);
	output Out;
	input Sel, Value0, Value1;
	wire [2:0]w;
	//assign Out = (Value0 & (~Sel)) | (Sel & Value1);
	not g0(w[0], Sel);
	and g1(w[1], w[0], Value0);
	and g2(w[2], Sel, Value1);
	or g3(Out, w[1], w[2]);
endmodule