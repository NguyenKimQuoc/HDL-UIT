module Decoder2to4(out, in, En);
	output [3:0] out;
	input [1:0] in;
	input En;
	and(out[0], ~in[1], ~in[0], En);
	and(out[1], ~in[1], in[0], En);
	and(out[2], in[1], ~in[0], En);
	and(out[3], in[1], in[0], En);
endmodule
module Decoder4to16(out, in, En);
	output [15:0]out;
	input [3:0]in;
	input En;
	wire [3:0]w;
	Decoder2to4 decode0(w[3:0], in[3:2], En);
	Decoder2to4 decode1[3:0](out, in[1:0], w[3:0]);
endmodule
module Decoder8to256(out, in, En);
	output [255:0]out;
	input [7:0]in;
	input En;
	wire [15:0]w;
	Decoder4to16 decode0(w[15:0], in[7:4], En);
	Decoder4to16 decode1[15:0](out, in[3:0], w[15:0]);
endmodule
module Decoder10to1024(out, in, En);
	output [1023:0]out;
	input [9:0]in;
	input En;
	wire [3:0]w;
	Decoder2to4 decode0(w[3:0], in[9:8], En);
	Decoder8to256 decode1[3:0](out, in[7:0], w[3:0]);
endmodule