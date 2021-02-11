`timescale 1ns/1ps
module TestDecoder();
  parameter t=50;
  reg [4:0]in;
  reg En;
  wire [31:0]out;
  integer k;  
  initial  begin
  En = 1;
  k = 0;
 
    for(k=0; k<=31; k=k+1) begin
      assign in = k;
      #t#t;
    end
    #t#t#t#t#t $finish;
  end
  Decoder5to32 a(out, in, En);
    
endmodule