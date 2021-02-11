`timescale 1ns/1ps
module SRwPLtest();
  reg clk, din_left, din_right;
  reg [1:0] S;
  reg [7:0] din;
  wire [7:0] qout;
  ShiftParallel_NBIT SRwPL_a(qout, clk, din, din_left, din_right, S[0], S[1]);
  initial
  clk=1'b0;
  always
  #20 clk = ~clk;
  initial 
  begin
    #40 din = 8'b00000000; din_left=1'b0; din_right=1'b0; S=2'b00;
    #40 din = 8'b00001111; din_left=1'b0; din_right=1'b0; S=2'b01; // qout = 00001111
    #40 din = 8'b00001001; din_left=1'b0; din_right=1'b0; S=2'b00; // qout = 00001111
    #40 din = 8'b11000000; din_left=1'b1; din_right=1'b0; S=2'b10; // qout = 00011110 shift left
    #40 din = 8'b11000000; din_left=1'b0; din_right=1'b1; S=2'b10; // qout = 00111101 shift left
    #40 din = 8'b00000011; din_left=1'b1; din_right=1'b0; S=2'b11; // qout = 10011110 shift right
    #40 din = 8'b00000011; din_left=1'b1; din_right=1'b0; S=2'b11; // qout = 11001111 shift right
    #40 din = 8'b00000111; din_left=1'b0; din_right=1'b0; S=2'b11;    
#100 $finish;
  end
 
endmodule