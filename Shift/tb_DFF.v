`timescale 1ns/1ps
// FPGA projects using Verilog/ VHDL 
// fpga4student.com
// Verilog code for D Flip FLop
// Testbench Verilog code for verification
module tb_DFF();
reg D;
reg clk;
wire Q;

D_FlipFlop dut(Q, D, clk);

initial begin
  clk=0;
     forever #10 clk = ~clk;  
end 
initial begin 
 D <= 0;
 #90;
 D <= 1;
 #100;
 D <= 0;
 #100;
 D <= 1;
end 
endmodule 