module Mux_16bit_2to1(a, b, s, out);
	input [15:0]a, b;
	input s;
	output [15:0]out;


  assign out[15:0] = s ? b[15:0] : a[15:0];
	
 
endmodule
