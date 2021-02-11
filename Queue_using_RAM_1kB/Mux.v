`timescale 1ns/1ps
module Mux_2to1(out, in0, in1, s);
  input in1, in0, s;
  output out;
  wire s_n, a1, a2, o1;
  not n1(s_n, s);
  and aa1(a1, s_n, in0);
  and aa2(a2, s, in1);
  or oa1(out, a1, a2);
endmodule

module Mux_2to1_10bit(o, i0, i1, s);
  parameter N = 10;
  input [N-1:0] i0;
  input [N-1:0] i1;
  input s;
  output [N-1:0] o;
  Mux_2to1 ins[N-1:0](o[N-1:0], i0[N-1:0], i1[N-1:0], s);
endmodule