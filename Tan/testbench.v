`timescale 1ns/1ps
module TestTan();
  parameter k=50;
  
  reg clk;
  reg [31:0] degree_angle;
  wire done;
  wire [31:0] result;
wire [31:0] a_wire;
	wire  [31:0] radian_angle;
  wire start, startLoop, Y_signal, X_signal, angle_signal, t1_signal, t2_signal, verify_angleGreaterA, angleGreaterA, doneLoop;
  initial 
  begin
    clk = 0; degree_angle = 32'h42700000;
    #(k*1000) $finish;
  end
  always @(clk) begin
    #k clk <= ~clk;
  end
  Tan f0(clk, degree_angle, done, result, a_wire, radian_angle, start, startLoop, Y_signal, X_signal, angle_signal, t1_signal, t2_signal, verify_angleGreaterA, angleGreaterA, doneLoop);

endmodule    
    