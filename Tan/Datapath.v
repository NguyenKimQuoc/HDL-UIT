module Datapath(
	input clk,
	input start,
	input startLoop,
	input Y_signal,
	input X_signal,
	input angle_signal,
	//input t1_signal,
	input tp_signal,
	input verify_angleGreaterA,
	input X_Y_mul_signal,
	input X_Y_add_signal,
	input add_sub_signal,
	input [31:0] angle,
	output angleGreaterA, // check angle > ai
	output doneLoop,
	output reg done = 1'b0,
	output [31:0] result,
	output [31:0]a_wire, 
	output reg [31:0] radian_angle, X, Y, 
	output reg [3:0]i, 
	output reg [31:0] t1, tp, 
	output [31:0] K_wire
);
	wire [31:0] a [10:0];
	assign a[0] = 32'h3f490fdb; //arctan(10^-0)
	assign a[1] = 32'h3dcc1f14;
	assign a[2] = 32'h3c23d5a4;
	assign a[3] = 32'h3a83126c;
	assign a[4] = 32'h38d1b717;
	assign a[5] = 32'h3727c5ac;
	assign a[6] = 32'h358637bd;
	assign a[7] = 32'h33d6bf95;
	assign a[8] = 32'h322bcc78;
	assign a[9] = 32'h30897060;
	assign a[10] = 32'h2edbe6ff;
	/*output reg [31:0] X = 32'b1;
	output reg [31:0] Y = 32'b0;
	output reg [31:0] i = 32'b0;
	output reg [31:0] t2;*/
	/*wire [31:0] a_wire;
	reg [31:0] radian_angle;
	reg [31:0] X;
	reg [31:0] Y;
	reg [3:0] i;
	reg [31:0] t1;
	reg [31:0] t2;
	wire [31:0] K_wire;*/
	wire [7:0]error;
	wire [31:0] Y_wire, angle_wire, t1_wire, tp_wire, t2_wire, radian_angle_wire, X_Y_add, X_Y_mul, tp_Y_wire, angle_filter;
	wire [31:0] final_value;
	//DegtoRad dtr(.Deg(degree_angle),.Rad(angle_wire)); // Deg -> Rad
	//fdivider f0(degree_angle, 32'h3ea2f983, , w);
	//fdivider f1(w, 32'h43340000, , angle_wire);
	mux11to1 m0(a[0], a[1], a[2], a[3], a[4], a[5], a[6], a[7], a[8], a[9], a[10], i, a_wire);
	FilterAngle fil0({1'b0, angle[30:0]}, angle_filter);
	fadder fa0(radian_angle, {1'b1,a_wire[30:0]}, radian_angle_wire); // angle = angle - ai
	LoopDivider10 L0(clk, 32'h3f800000, i, startLoop, doneLoop, K_wire); // 10^-i
	mux21 m1(Y, X, X_Y_mul_signal, X_Y_mul);
	mux21 m2(Y, X, X_Y_add_signal, X_Y_add);
	fmultiplication fd0(X_Y_mul, K_wire, error[0], error[1], error[2], error[3], t1_wire); // K.Y
	fadder fa1(X_Y_add, {add_sub_signal, t1_wire[30:0]}, tp_Y_wire); // tp = X - K.Y
	//fmultiplication fd2(X, K_wire, error[4], error[5], error[6], error[7],t2_wire); // K.X
	//fadder fa3(Y, t2, Y_wire); // Y = Y + K.X
	Comparator c0(a_wire, radian_angle, angleGreaterA); // angle > ai ?
	fdivider fd1(Y, X, , final_value);
	assign result = {(angle[31]==final_value[31])?1'b0:1'b1, final_value[30:0]};
	always @(posedge clk) begin
		if(start) begin	
			radian_angle <= {1'b0, angle_filter[30:0]};
			X <= 32'h3f7fffff;
			Y <= 32'h00000001;
			i <= 4'b0;
			tp <= 32'h00000000;
			done <= 1'b0;
		end
		if(angle_signal)
			radian_angle <= radian_angle_wire;
		//if(t1_signal)
			//t1 <= t1_wire;
		if(tp_signal)
			tp <= tp_Y_wire;
		if(Y_signal) begin
			Y <= tp_Y_wire;
		end
		if(X_signal) begin
			X <= tp;
		end
		if(verify_angleGreaterA) begin
			if(i == 4'b0111) begin
				done <= 1'b1;	
			end
			else begin
				if(!angleGreaterA)
					i <= i + 1'b1;
				done <= 1'b0;
			end
		end
	end
endmodule