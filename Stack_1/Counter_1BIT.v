module Counter_1BIT(Q, Cout, Clk, D, Load, Cin, In, Set, Reset);
	output Q, Cout;
	input Clk, D, Load, Cin, In, Set, Reset;
	wire w1, w2;
	HAS h(.C(Cout), .D(D), .Qnext(w1), .Q(Q), .Cin(Cin));
	Mux21_1BIT m(.Out(w2), .Sel(Load), .Value0(w1), .Value1(In));
	D_FlipFlop dff(.Q(Q), .D(w2), .Clk(Clk), .Pre_n(Set), .Clr_n(Reset));
endmodule