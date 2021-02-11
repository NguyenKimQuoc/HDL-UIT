`timescale 1ns/1ps
module TestBench();
  parameter t=50;
  reg clk, write;
  reg [4:0] wrAddr;
  reg [31:0] wrData;
  reg [4:0] rdAddrA;
  reg [4:0] rdAddrB;
  reg REA, REB;
  wire [31:0] rdDataA;
  wire [31:0] rdDataB;
  integer i, k;
  
  initial clk = 0;
  always @ (clk)
  #t clk <= ~clk;
  initial begin
    write = 0;
    wrAddr = 5'd0;
    wrData = 32'd0;
    REA = 0;
    REB = 0;
    #t#t#t
    i = 0;
    write = 1;
    wrAddr = 5'd0;
    wrData = 32'd0;
    for(i=0; i<=31; i=i+1) begin
      assign wrAddr = i;
     assign wrData = wrData+11111;       
      #t#t;
/*      assign wrAddr = 1'bz;
      assign wrData = wrData+11111;
      #t;*/
    end
    wrAddr = 6'd31;
    #t#t#t#t#t#t
    k = 0;
    write = 0;
    wrAddr = 5'd0;
    wrData = 32'd0;
    REA = 1;
    REB = 1;
    for(k=0; k<=31; k=k+1) begin
      assign rdAddrA = k;
      assign rdAddrB = k-1;
      REA = 1;
      REB = 1;
      if(k==2 || k==5) 
        REA = 0;
      if(k==0 || k==9)
        REB = 0;
      #t#t;
    end
    #t#t#t#t#t $finish;
  end
  RegisterFile rf(rdDataA, rdDataB, clk, write, wrAddr,  REA, REB, rdAddrA,  rdAddrB, wrData);
    
endmodule