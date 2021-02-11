`timescale 1ns/1ps

module TestBench();
  parameter k = 50;
  reg [7:0] io;
  wire [7:0] out;
  reg reset_n, en, rw, clk;
  wire empty, full, rws;
  wire [7:0] bus;
  
  integer i;
  always @ (clk)
  #k clk <= ~clk;
  assign rws = en && rw; 
  initial begin
    clk=1;
    reset_n=0;
    en=0;
    rw=0;
    io=8'd0;
    #(k*3)
    reset_n=1;
    rw=1;
    en=1;
    for(i=0; i<1024; i=i+1) begin
      #(k/2)
      io = io + 1;
      #(k + k/2);
    end
    en=0;
    #(k*4);
    en=1;
    rw=0;
    for(i=0; i<1024; i=i+1) begin
      #(k*2);
    end
    #10 $finish;
  end
  
  queue ins(.io(io), .empty(empty), .full(full), .rest_n(reset_n), .en(en), .rw(rw), .clk(clk), .out(out));
endmodule
