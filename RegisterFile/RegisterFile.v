module RegisterFile(OutA, OutB, Clk, WriteEn, WriteAddr, ReadEnA, ReadEnB, ReadAddrA, ReadAddrB, In);
	output [31:0]OutA, OutB;
	input [31:0]In;
	input [4:0]WriteAddr, ReadAddrA, ReadAddrB;
	input Clk, WriteEn, ReadEnA, ReadEnB;
	wire [31:0]InputEn, wA, wB;
	Decoder5to32 decoder0(InputEn, WriteAddr, WriteEn);
	RegisterFileCell_NBIT rgCell32[31:0](
		.OutA(OutA[31:0]), 
		.OutB(OutB[31:0]), 
		.Clk(Clk), 
		.ReadA(wA[31:0]), 
		.ReadB(wB[31:0]), 
		.WS(InputEn), 
		.In(In[31:0])
	);	
	Decoder5to32 decoder1(wA, ReadAddrA, ReadEnA);
	Decoder5to32 decoder2(wB, ReadAddrB, ReadEnB);
endmodule