`timescale 1ns/1ps
/*module Ram(IO, Clk, RowSel, RWS, CS);
	inout [7:0]IO;
	input [9:0]RowSel;
	input RWS, CS, Clk;
	
	wire RWSn, WE, CSa;
	wire [7:0] IOa, O_MC;
	wire [1023:0] O_En;
	
	not  n0(RWSn, RWS);
	and  a0(WE, RWS, CS, Clk);
	and  a1(CSa, RWSn, CS);
	
	Decoder10to1024 decoder0(
		.out(O_En), 
		.in(RowSel), 
		.En(1)
	);
	MCell mcell[1023:0](
		.Out(O_MC), 
		.In(IO), 
		.RowSel(O_En), 
		.WriteEn(WE)
	);
	
	buf bufn[7:0](IOa,IO);
	bufif1 bufifn[7:0](IO,O_MC, CSa);
	
	
endmodule */

module d_latch (  output reg q,
                  output reg q_n,          
                  input en,
                  input d                
                  );    
   always @ (en or d)
         if (en)
            q <= d;
endmodule

module d_latch_8bit(Q, Q_n, E, D); //testbench: ok
  output [7:0] Q;
  output [7:0] Q_n;
  input [7:0] D;
  input E;
  d_latch ins[7:0](Q[7:0], Q_n[7:0], E, D[7:0]);
endmodule

module MC(cout, RS, WE, din); //memory cell, row select, write enable
  input RS, WE, din;
  output cout;
  wire and1;
  and a1(and1, WE, RS);
  d_latch inst(Q, , and1, din);
  bufif1 bf1 (cout, Q, RS);
endmodule

module MC_8bit(cout, RS, WE, din);
  output [7:0] cout;
  input [7:0] din;
  input RS, WE;
  MC inst[7:0](cout[7:0], RS, WE, din[7:0]);
endmodule

module decoder_5to32(Y, en, addr);
  input [4:0] addr;
  input en;
  output [31:0] Y;
  wire [4:0] addr_n;
  not(addr_n[4], addr[4]);
  not(addr_n[3], addr[3]);
  not(addr_n[2], addr[2]);
  not(addr_n[1], addr[1]);
  not(addr_n[0], addr[0]);
  
  //00 000
  and(Y[0], addr_n[4], addr_n[3], addr_n[2], addr_n[1], addr_n[0], en);
  //00 001
  and(Y[1], addr_n[4], addr_n[3], addr_n[2], addr_n[1], addr[0], en);
  //00 010
  and(Y[2], addr_n[4], addr_n[3], addr_n[2], addr[1], addr_n[0], en);
  //00 011
  and(Y[3], addr_n[4], addr_n[3], addr_n[2], addr[1], addr[0], en);
  //00 100
  and(Y[4], addr_n[4], addr_n[3], addr[2], addr_n[1], addr_n[0], en);
  //00 101
  and(Y[5], addr_n[4], addr_n[3], addr[2], addr_n[1], addr[0], en);
  //00 110
  and(Y[6], addr_n[4], addr_n[3], addr[2], addr[1], addr_n[0], en);
  //00 111
  and(Y[7], addr_n[4], addr_n[3], addr[2], addr[1], addr[0], en);
  //01 000
  and(Y[8], addr_n[4], addr[3], addr_n[2], addr_n[1], addr_n[0], en);
  
  //01 001
  and(Y[9], addr_n[4], addr[3], addr_n[2], addr_n[1], addr[0], en);
  //01 010
  and(Y[10], addr_n[4], addr[3], addr_n[2], addr[1], addr_n[0], en); 
  //01 011
  and(Y[11], addr_n[4], addr[3], addr_n[2], addr[1], addr[0], en); 
  //01 100
  and(Y[12], addr_n[4], addr[3], addr[2], addr_n[1], addr_n[0], en);
  //01 101
  and(Y[13], addr_n[4], addr[3], addr[2], addr_n[1], addr[0], en);
  //01 110
  and(Y[14], addr_n[4], addr[3], addr[2], addr[1], addr_n[0], en);
  //01 111
  and(Y[15], addr_n[4], addr[3], addr[2], addr[1], addr[0], en);
      
  //10 000
  and(Y[16], addr[4], addr_n[3], addr_n[2], addr_n[1], addr_n[0], en);
  //10 001
  and(Y[17], addr[4], addr_n[3], addr_n[2], addr_n[1], addr[0], en);
  //10 010
  and(Y[18], addr[4], addr_n[3], addr_n[2], addr[1], addr_n[0], en);
  //10 011
  and(Y[19], addr[4], addr_n[3], addr_n[2], addr[1], addr[0], en); 
  //10 100
  and(Y[20], addr[4], addr_n[3], addr[2], addr_n[1], addr_n[0], en);
  //10 101
  and(Y[21], addr[4], addr_n[3], addr[2], addr_n[1], addr[0], en);
  //10 110
  and(Y[22], addr[4], addr_n[3], addr[2], addr[1], addr_n[0], en);
  //10 111
  and(Y[23], addr[4], addr_n[3], addr[2], addr[1], addr[0], en);
  
  //11 000
  and(Y[24], addr[4], addr[3], addr_n[2], addr_n[1], addr_n[0], en);
  //11 001
  and(Y[25], addr[4], addr[3], addr_n[2], addr_n[1], addr[0], en);
  //11 010
  and(Y[26], addr[4], addr[3], addr_n[2], addr[1], addr_n[0], en); 
  //11 011
  and(Y[27], addr[4], addr[3], addr_n[2], addr[1], addr[0], en); 
  //11 100
  and(Y[28], addr[4], addr[3], addr[2], addr_n[1], addr_n[0], en);
  //11 101
  and(Y[29], addr[4], addr[3], addr[2], addr_n[1], addr[0], en);
  //11 110
  and(Y[30], addr[4], addr[3], addr[2], addr[1], addr_n[0], en);
  //11 111
  and(Y[31], addr[4], addr[3], addr[2], addr[1], addr[0], en);
  
endmodule

module decoder_10to1024(Y, en, addr);
  input [9:0] addr;
  input en;
  output [1023:0] Y;
  wire [31:0] addr_sub; 
  decoder_5to32 inst1(addr_sub[31:0], en, addr[9:5]);
  decoder_5to32 inst2[31:0]({Y[1023:992], Y[991:960], Y[959:928], Y[927:896], Y[895:864], Y[863:832], Y[831:800], Y[799:768], Y[767:736], Y[735:704], Y[703:672], Y[671:640], Y[639:608], Y[607:576], Y[575:544], Y[543:512], Y[511:480], Y[479:448], Y[447:416], Y[415:384], Y[383:352], Y[351:320], Y[319:288], Y[287:256], Y[255:224], Y[223:192], Y[191:160], Y[159:128], Y[127:96], Y[95:64], Y[63:32],Y[31:0]}, addr_sub, addr[4:0]);
endmodule  


module RAM(io, addr, rws, cs, en_decoder);
  inout [7:0] io;
  input [9:0] addr;
  input rws, cs, en_decoder;
  wire [1023:0] Y;
  wire [7:0] bus;
  wire we;
  decoder_10to1024 inst2(Y, en_decoder, addr);
  and(we, rws, cs);
  MC_8bit inst[1023:0](bus, Y, we, io);
  not(rws_n, rws);
  and(IO_tri_ctrl, rws_n, cs);
  bufif1 int[7:0](io[7:0], bus[7:0], IO_tri_ctrl);
endmodule
