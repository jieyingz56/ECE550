module full_adder(a, b, c_in, sum, c_out);
	input a, b, c_in;
	output sum, c_out;
	wire w1, w2, w3;
	
	xor my_xor1 (w1,a, b);
	xor my_xor2 (sum, c_in, w1);
	and my_and1 (w2, a, b);
	and my_and2 (w3, c_in, w1);
	or my_or (c_out, w2, w3);
	
endmodule
