`timescale 1ns/1ps
module TestTan();
  parameter k=20;
  
  reg clk, start_restart;
  reg [31:0] angle;
  wire done, start, startLoop, Y_signal, X_signal, angle_signal, /*t1_signal,*/ tp_signal, verify_angleGreaterA, angleGreaterA, doneLoop;
  wire [31:0] result, a_wire, radian_angle;
    initial 
  begin
    clk = 0; angle = 32'h3fc00000; //1.5 rad
    #k start_restart = 1'b1;
    #k start_restart = 1'b0;
    #(k*1200+k) start_restart = 1'b1;
    angle = 32'hc011361e; //255 deg
    #k start_restart = 1'b0;  
    #(k*1500) $finish;
  end
  always @(clk) begin
    #k clk <= ~clk;
  end
  Tan f0(clk, angle, start_restart, done, result);

endmodule    
    