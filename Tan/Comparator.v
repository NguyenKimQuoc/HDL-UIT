module Comparator(
	input [31:0] a,
	input [31:0] b,
	output result
);
	wire [31:0] value;
	fadder fa0(a, {1'b1, b[30:0]}, value);
	assign result = value[31];
endmodule