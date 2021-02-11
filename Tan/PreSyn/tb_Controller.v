`timescale 1ns/1ps
module TestController();
  parameter k=500;
  
  reg clk;
  reg done;
  wire start, startLoop, Y_signal, X_signal, angle_signal, t1_signal, t2_signal, verify_angleGreaterA;
  reg angleGreaterA, doneLoop;
  initial 
  begin
    clk = 0; angleGreaterA=0;
	doneLoop =0;
	done =0;
    #(k*20) $finish;
  end
  always @(clk) begin
    #k clk <= ~clk;
  end
  Controller c0(
	clk,
	angleGreaterA,
	doneLoop,
	done,
	start,
	startLoop,
	Y_signal,
	X_signal,
	angle_signal,
	t1_signal,
	t2_signal,
	verify_angleGreaterA
);

endmodule    
    

