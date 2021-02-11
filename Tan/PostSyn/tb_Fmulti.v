`timescale 1ns/1ps
module TestFmulti();
  reg [31:0] a, b;
	wire  [31:0] result;
	wire exp, over, under, z;
  initial 
  begin
    a = 32'h3f800000;
    b = 32'h3f800001;
    #1000 $finish;
  end
  fmultiplication f0(a, b, exp, over, under, result, z);
endmodule    
    





