module DegtoRad(
	input [31:0] Deg,
	output [31:0] Rad,
	output wire Exception,
	output wire Exception1,
	output [31:0]w
);
	
	fdivider fd0(Deg, 32'h3ea2f983, Exception, w);
	fdivider fd1(w, 32'h43340000, Exception1, Rad);
endmodule