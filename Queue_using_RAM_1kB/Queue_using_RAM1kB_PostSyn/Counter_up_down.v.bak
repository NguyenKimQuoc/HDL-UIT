
module HAS(Ci_next, Di, E, D, Qi, Ci); //E là Ci ??? 
  input E, D, Qi, Ci;
  output Ci_next, Di;
  wire a1, a2, Qi_n, D_n;
  not inst1(Qi_n, Qi);
  not inst2(D_n, D);
  and inst3(a1, D, Qi_n, E);
  and inst4(a2, E, Qi, D_n);
  or inst5(Ci_next, a1, a2);
  xor inst6(Di, E, Qi);
endmodule  

module clockedD_latch(Q, Qbar, D, Reset, clk);
	output Q, Qbar;
	input D, Reset, clk;
	wire X, Y, Z, clkbar, Dbar, Rbar;
	not a1(clkbar, clk);
	not a2(Dbar, D);
	not a3(Rbar, Reset);
	or r1(X, Dbar, clkbar); 
	or r2(Y, clkbar, D); 
	or	r3(Z, X, Reset);
	nand n1(Q, Qbar, Z); 
	nand n2(Qbar, Q, Y, Rbar);
endmodule

module Neg_edge_dff(Q, D, Reset, clk);
	output Q;
	input D, Reset, clk;
	wire cbar1, cbar2, Q1;
	not a1(cbar1, clk);
	not a2(cbar2, cbar1); 
	clockedD_latch Master_D(Q1,, D, Reset, cbar1);
	clockedD_latch Slave_D(Q,, Q1, Reset, cbar2);
endmodule

module Pos_Edge_DFF(Q, D, Reset_n, clk);
	output Q;
	input D, Reset_n, clk;
	not (Rbar, Reset_n);
	Neg_edge_dff Dff(Q, D, Rbar, clk);
endmodule

module Counter(qout, D, E, reset_n, clk);
  parameter N = 11;
  input clk, D, E, reset_n;
  output [N-1:0] qout;
  wire [N-1:0] ci_next;
  wire [N-1:0] Di;
  wire [N-1:0] Din_ff;
  
  HAS h[N-1:0](ci_next, Di, {ci_next[N-2:0], E}, D, qout, {ci_next[N-2:0], E});
  Pos_Edge_DFF dff[N-1:0](qout, Di, reset_n, clk);
endmodule
  
  

