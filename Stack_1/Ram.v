module Ram(IO, Address, RWS, CS);
	inout [7:0] IO;
	input [9:0] Address;
	input RWS, CS;
	
	wire WE, OutEn;
	wire [7:0] In, Out;
	wire [1023:0] Sel;

	and(WE, RWS, CS);
	and(OutEn, ~RWS, CS);
	
	buf bufn[7:0](In, IO);
	bufif1 bufifn[7:0](IO, Out, OutEn);
	
	Decoder10to1024 decoder0(
		.out(Sel), 
		.in(Address), 
		.En(1)
	);
	MCell mcell[1023:0](
		.Out(Out), 
		.In(IO), 
		.RowSel(Sel), 
		.WriteEn(WE)
	);

endmodule 