module Tan(
	input clk,
	input [31:0] angle,
	input start_restart,
	output done,
	output [31:0] result,
	output wire start, startLoop, Y_signal, X_signal, angle_signal, /*t1_signal,*/ tp_signal, verify_angleGreaterA, angleGreaterA, doneLoop,
	output wire [31:0] a_wire, radian_angle,
	output[31:0] X,
	output [31:0] Y,
	output  [3:0] i,
	output [31:0] t1,
	output [31:0] t2,
	output wire [31:0] K_wire,
	output X_Y_mul_signal,
	output X_Y_add_signal
);
	wire add_sub_signal;
	Datapath t0(clk, start, startLoop, Y_signal, X_signal, angle_signal, /*t1_signal,*/ tp_signal, verify_angleGreaterA, X_Y_mul_signal, X_Y_add_signal, add_sub_signal, angle, angleGreaterA, doneLoop, done, result, a_wire, radian_angle, X, Y, i, t1, t2, K_wire);
	Controller c0(clk, angleGreaterA, doneLoop, done, start_restart, start, startLoop, Y_signal, X_signal, angle_signal, /*t1_signal,*/ tp_signal, verify_angleGreaterA, X_Y_mul_signal, X_Y_add_signal, add_sub_signal);
endmodule