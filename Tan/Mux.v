module mux21 ( 
	input [31:0] a, 
	input [31:0] b,
	input sel,
	output [31:0] out
); 
	
	assign out = sel ? b : a; 
endmodule
module mux11to1 ( 
	input [31:0] a,
	input [31:0] b,
	input [31:0] c,
	input [31:0] d,
	input [31:0] e,
	input [31:0] f,
	input [31:0] g,
	input [31:0] h,
	input [31:0] i,
	input [31:0] j,
	input [31:0] k,
	input [3:0] sel,
	output reg [31:0] out
); 
	
	always @(*) begin
	case(sel)
		4'b0000: out = a;
		4'b0001: out = b;
		4'b0010: out = c;
		4'b0011: out = d;
		4'b0100: out = e;
		4'b0101: out = f;
		4'b0110: out = g;
		4'b0111: out = h;
		4'b1000: out = i;
		4'b1001: out = j;
		4'b1010: out = k;
	endcase
	end
endmodule