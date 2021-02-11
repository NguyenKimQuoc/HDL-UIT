`timescale 1ns/1ps

/*module TestBench();
  reg [9:0] in1;
  reg [9:0] in2;
  reg s;
  wire [9:0] out;
  //initial CLK = 0;
  //always @ (CLK)
  // #20 CLK <= ~CLK;
    
  initial begin
    #40 in1=10'd150; in2=10'd151; s=0;
    #40 in1=10'd20; in2=10'd20; s=1;
    #40 in1=10'd200; in2=10'd20; s=1;
    #40 in1=10'd150; in2=10'd149; s=0;
    #40 in1=10'd250; in2=10'd250; s=1;
    #40 in1=10'd2; in2=10'd2; s=1;
    #40 $finish;
  end
  
  Mux_2to1_10bit ins(.o(out), .i0(in1), .i1(in2), .s(s));
endmodule*/


module TestBench();
  reg [7:0] io;
  reg reset_n, en, rw, clk;
  wire empty, full, rws;
  wire [7:0] bus;
  
  integer i;
  initial clk = 0;
  always @ (clk)
  #50 clk <= ~clk;
  assign rws = en && rw;
  assign bus =  rws ? io : 8'bz;  
  initial begin
    clk=0;
    reset_n=0;
    en=0;
    rw=0;
    io=8'd0;
    #150
    reset_n=1;
    rw=1;
    en=1;
    for(i=0; i<=20; i=i+1) begin
      io = i + 8'd2;
      #100;
    end
    en=0;
    #200;
    en=1;
    rw=0;
    #2200 $finish;
  end
  
  queue ins(.io(bus), .empty(empty), .full(full), .reset_n(reset_n), .en(en), .rw(rw), .clk(clk));
endmodule