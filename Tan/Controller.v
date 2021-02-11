module Controller(
	input clk,
	input angleGreaterA,
	input doneLoop,
	input done,
	input start_restart,
	output reg start,
	output reg startLoop,
	output reg Y_signal,
	output reg X_signal,
	output reg angle_signal,
	//output reg t1_signal,
	output reg tp_signal,
	output reg verify_angleGreaterA,
	output reg X_Y_mul_signal,
	output reg X_Y_add_signal,
	output reg add_sub_signal
);
	reg [2:0] state = 3'b0;
	always @(posedge clk or posedge start_restart) begin
		if(start_restart == 1'b1) begin
			start <= 1'b1;
			startLoop <= 1'b0;
			Y_signal <= 1'b0;
			X_signal <= 1'b0;
			angle_signal <= 1'b0;
			//t1_signal <= 1'b0;
			tp_signal <= 1'b0;
			verify_angleGreaterA <= 1'b0;
			state <= 3'b001;
			X_Y_add_signal <= 1'b0;
			X_Y_mul_signal <= 1'b0;
			add_sub_signal <= 1'b0;
		end
		else begin
		if(!done) begin
			case(state)
				/*3'b000: begin // init
					start <= 1'b1;
					startLoop <= 1'b0;
					Y_signal <= 1'b0;
					X_signal <= 1'b0;
					angle_signal <= 1'b0;
					//t1_signal <= 1'b0;
					tp_signal <= 1'b0;
					verify_angleGreaterA <= 1'b0;
					state <= 3'b001;
					X_Y_add_signal <= 1'b0;
					X_Y_mul_signal <= 1'b0;
					add_sub_signal <= 1'b0;
				end*/
				3'b001: begin // input angle
					if(!angleGreaterA) begin
						state <= 3'b110;
					end
					else begin
						start <= 1'b0;
						startLoop <= 1'b0;
						Y_signal <= 1'b0;
						X_signal <= 1'b0;
						angle_signal <= 1'b1;
						//t1_signal <= 1'b0;
						tp_signal <= 1'b0;
						verify_angleGreaterA <= 1'b0;
						state <= 3'b010;
						X_Y_add_signal <= 1'b0;
						X_Y_mul_signal <= 1'b0;
						add_sub_signal <= 1'b0;
					end	
				end
				3'b010: begin // count K
					start <= 1'b0;
					startLoop <= 1'b1;
					Y_signal <= 1'b0;
					X_signal <= 1'b0;
					angle_signal <= 1'b0;
					//t1_signal <= 1'b0;
					tp_signal <= 1'b0;
					verify_angleGreaterA <= 1'b0;
					state <= 3'b011;
					X_Y_add_signal <= 1'b0;
					X_Y_mul_signal <= 1'b0;
					add_sub_signal <= 1'b0;
				end
				3'b011: begin
					startLoop <= 1'b0;
					if(doneLoop) begin
						start <= 1'b0;
						Y_signal <= 1'b0;
						X_signal <= 1'b0;
						angle_signal <= 1'b0;
						//t1_signal <= 1'b1;
						tp_signal <= 1'b1;
						verify_angleGreaterA <= 1'b0;
						state <= 3'b100;
						X_Y_add_signal <= 1'b1;
						X_Y_mul_signal <= 1'b0;
						add_sub_signal <= 1'b1;
					end
				end
				3'b100: begin
					start <= 1'b0;
					startLoop <= 1'b0;
					Y_signal <= 1'b1;
					X_signal <= 1'b0;
					angle_signal <= 1'b0;
					//t1_signal <= 1'b0;
					tp_signal <= 1'b0;
					verify_angleGreaterA <= 1'b0;
					state <= 3'b101;
					X_Y_add_signal <= 1'b0;
					X_Y_mul_signal <= 1'b1;
					add_sub_signal <= 1'b0;
				end
				3'b101: begin
					start <= 1'b0;
					startLoop <= 1'b0;
					Y_signal <= 1'b0;
					X_signal <= 1'b1;
					angle_signal <= 1'b0;
					//t1_signal <= 1'b0;
					tp_signal <= 1'b0;
					verify_angleGreaterA <= 1'b0;
					state <= 3'b001;
					/*if(!angleGreaterA)
						state <= 3'b110;
					else
						state <= 3'b001;*/
				end
				/*3'b110: begin
					start <= 1'b0;
					startLoop <= 1'b0;
					Y_signal <= 1'b0;
					X_signal <= 1'b1;
					angle_signal <= 1'b0;
					//t1_signal <= 1'b0;
					tp_signal <= 1'b0;
					verify_angleGreaterA <= 1'b0;
					if(!angleGreaterA)
						state <= 3'b111;
					else
						state <= 3'b001;
				end*/
				3'b110: begin
					if(!angleGreaterA)
						verify_angleGreaterA <= 1'b1;		
					state <= 3'b001;
				end
			endcase
		end
		else begin
		end
		end
	end
endmodule
