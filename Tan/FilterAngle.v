module FilterAngle(
	input [31:0] angle,
	output [31:0] filterAngle
);
	wire [31:0] out1, out2, out3, out4, out5, out6;
	fadder fa0(angle, 32'hc0490fdb, out1);// - 180
	fadder fa1(angle, 32'hbfc90fdb, out2); // -90
	fadder fa2(32'h3fc90fdb, {1'b1,out2[30:0]}, out3); // 90 < angle < 180

	fadder fa3(angle, 32'hc096cbe4, out4); // -270
	fadder fa4(32'h0, out1, out5); // 180 < angle < 270
	
	fadder fa5(32'h3fc90fdb, {1'b1,out4[30:0]}, out6);
	assign filterAngle = (out2[31]==1)?angle:(((out2[31]==0) & (out1[31]==1))?out3:(((out1[31]==0) & (out4[31]==1))?out5:out6));
endmodule
