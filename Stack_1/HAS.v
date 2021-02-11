module HAS(C, Qnext, D, Q, Cin);
	output C, Qnext;
	input D, Q, Cin;
	
	wire [3:0]w;
	//assign w1 = D & Cin & (~Q);
	not g0(w[0], Q);
	and g1(w[1], D, Cin, w[0]);
	//assign w2 = (~D) & Cin & Q;
	not g2(w[2], D);
	and g3(w[3], w[2], Cin, Q);
	//assign C = w1 | w2;
	or g4(C, w[1], w[3]);
	//assign Qnext = Cin ^ Q;
	xor g5(Qnext, Cin, Q);
endmodule