`timescale 1ns/1ps
module TestDegtoRad();
  reg [31:0] a;
	wire  [31:0] result, w;
	wire exp, exp1;
  initial 
  begin
    a = 32'h42700000;
    #500 $finish;
  end
  DegtoRad f0(a, result, exp, exp1, w);

endmodule    
    




