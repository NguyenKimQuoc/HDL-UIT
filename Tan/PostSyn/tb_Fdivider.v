`timescale 1ns/1ps
module TestFdivider();
  reg [31:0] a, b;
	wire  [31:0] result, w;
	wire exp;
  initial 
  begin
    a = 32'h42700000;
    b = 32'h3ea2f983;
    #500 $finish;
  end
  fdivider f0(a, b, exp, w);
  fdivider f1(w, 32'h43340000, exp, result);
endmodule    
    



