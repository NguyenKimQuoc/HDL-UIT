module TestDecoder;
	// Inputs
	reg [3:0]in;

	// Outputs
	wire [16:0]w;
	reg En;
	// Instantiate the Unit Under Test (UUT)
	Decoder4to16 uut (
	    .out(w),
	    .in(in),
	    .En(En)
	);
	initial begin
	// Initialize Inputs
	in = 4'b0000; En = 1'b1;
	#100 in = 4'b0001; En = 1'b1;
	#100 in = 4'b0010; En = 1'b1;
	#100 in = 4'b0011; En = 1'b1;
	#100 in = 4'b0100; En = 1'b1;	
	#100 in = 4'b0101; En = 1'b0;
	#100 in = 4'b0110; En = 1'b1;
	#100 in = 4'b0111; En = 1'b1;
	#100 in = 4'b1000; En = 1'b1;
	#100 in = 4'b1001; En = 1'b1;
	#100 in = 4'b1010; En = 1'b1;
	#100 in = 4'b1011; En = 1'b1;
	#100 in = 4'b1001; En = 1'b0;
	#100 $finish;
	end
endmodule
