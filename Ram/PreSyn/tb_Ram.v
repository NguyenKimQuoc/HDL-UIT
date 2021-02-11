`timescale 1ns/1ps
module TestRam();
  parameter k=50;
  
  reg [7:0]  bus;
  wire [7:0] data_out;
  reg [9:0] addr;
  reg RWS, clk;
  
   assign data_out = RWS? bus : 8'bz; 
    
   Ram A(.IO(data_out), .Address(addr), .RWS(RWS),.CS(clk));
   
  initial begin
  clk = 1;
  RWS = 0;
  addr = 8'd000;
  #(k*2)   addr = 10'd0; RWS = 1; bus = 8'd4;
  #(k*2)   addr = 10'd62; RWS = 1; bus = 8'd15;
  #(k*2)   addr = 10'd217; RWS = 1; bus = 8'd46;
  #(k*2)   addr = 10'd602; RWS = 1; bus = 8'd95;
  #(k*2)   addr = 10'd1015; RWS = 1; bus = 8'd168;
  #(k*2)   addr = 10'd0; RWS = 0; bus = 8'd42;
  #(k*2)   addr = 10'd62; RWS = 0; bus = 8'd5;
  #(k*2)   addr = 10'd217; RWS = 0; bus = 8'd61;
  #(k*2)   addr = 10'd602; RWS = 0; bus = 8'd200;
  #(k*2)   addr = 10'd1015; RWS = 0; bus = 8'd135;
  #k 
  $finish;
  end
  
  always @ (clk) begin
    #k
    clk <= ~clk;
  end
endmodule    
    