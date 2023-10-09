module Mux_1bit_2to1(a, b, s, out);
	input a, b;
	input s;
	output out;


  assign out = s ? b : a;
	
 
endmodule
