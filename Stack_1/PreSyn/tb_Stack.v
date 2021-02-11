`timescale 1ns/1ps
module TestStack();
  parameter k=50;
  
  reg [7:0] bus;
  reg Reset, Enable, Push_Pop, CLK;
  wire Empty, Full;
  wire [7:0] data_out;
  //wire [9:0]TopVal, TopVal_1, InRAM;
  integer i, j;
  assign data_out =  (~Push_Pop) ? bus : 8'bz;  
  initial 
  begin
    CLK = 0; Push_Pop = 1; Enable = 1; Reset = 0; bus = 0;
    #(k);
    Reset = 1'b1;
    for (i = 0; i <= 1023; i = i + 1)
      begin
          if(i==600)
		Enable = 0;
          else
   		Enable = 1;
          Push_Pop = 1'b0;
          bus = bus + 1'b1;
          #(k*2);
      end
    Enable = 0;
    #(k*2);
    Enable = 1;
    for (j = 0 ; j <= 1022; j = j + 1)
      begin
        Push_Pop = 1'b1;
        #(k*2);
      end
   $finish;
  end
  always @(CLK) begin
    #k CLK <= ~CLK;
  end
  Stack a(.IO(data_out), .Full(Full), .Empty(Empty), .Reset(Reset), .Push_Pop(Push_Pop), .Enable(Enable), .Clk(CLK));//, .TopVal(TopVal), .TopVal_1(TopVal_1), .InRAM(InRAM));

endmodule    
    