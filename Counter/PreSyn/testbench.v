`timescale 1ns/1ps
module tb_Counter_8BIT();
  parameter k = 10;
  reg [7:0] IN;
  reg  ENABLE, UP_DOWN, CLK, LOAD;
  wire [7:0] OUT;
  wire CARRYOUT;
  always @ (CLK)
      #k CLK <= ~CLK;
  initial begin
    CLK = 0;
    ENABLE = 1'b1;
    UP_DOWN = 1'b0;
    LOAD = 1'b0;
    IN = 8'd128;
    #(2*k*3)
    LOAD = 1'b1;
    IN = 8'd120;
    #(2*k)
    ENABLE = 1'b0;
    #(2*k*3)
    ENABLE = 1'b1;
    UP_DOWN = 1'b0;
    #(2*k*2)
    $finish;
  end
    Counter_8BIT ins1(.Q(OUT), .Cout(CARRYOUT), .In(IN), .E(ENABLE), .D(UP_DOWN), .Clk(CLK), .Load(LOAD));
endmodule

