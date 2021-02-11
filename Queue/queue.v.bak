module queue(io, empty, full, en, rest_n, rw, clk, out);
  input [7:0] io;
  output reg [7:0] out;
  input rw, clk, en, rest_n;
  output reg empty, full;
  reg [7:0] register[1023:0];
  integer i = 0;
  integer k = 0;
  always @(posedge clk) begin
     if(rw == 1) begin
			register[i] = io;
			i=i+1;
			end
		if(rw == 0) begin
			out = register[k];
			k=k+1;
		end
		if(i==1023) full = 1; else full = 0;
		if(k==i) empty = 1; else empty = 0;
   end 
endmodule