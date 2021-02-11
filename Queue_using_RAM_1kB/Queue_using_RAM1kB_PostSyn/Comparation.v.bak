module Comparator(out, in1, in2);
  parameter N = 10;
  output out;
  input [N-1:0] in1;
  input [N-1:0] in2;
  wire [N-1:0] x;
  xnor ins[N-1:0](x, in1, in2);
  and a(out, x[0], x[1], x[2], x[3], x[4], x[5], x[6], x[7], x[8], x[9]);
endmodule