module MCell_1BIT(Out, In, RowSel, WriteEn);
	output Out;
	input In;
	input RowSel, WriteEn;
	wire [1:0]w;
	and gate0(w[0], RowSel, WriteEn);
	D_Latch latch0(.Q(w[1]),.D(In), .E(w[0]));
	bufif1 buf0(Out, w[1], RowSel);
endmodule

module MCell(Out, In, RowSel, WriteEn);
	parameter N = 8;
	output [N-1:0]Out;
	input [N-1:0]In;
	input RowSel, WriteEn;
	MCell_1BIT cell0[N-1:0] (.Out(Out[N-1:0]), .In(In[N-1:0]), .RowSel(RowSel), .WriteEn(WriteEn));
endmodule 