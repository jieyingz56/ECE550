module ripple_carry_adder(a, b, c_in, sum, c_out, line);
	input [15:0]a, b;
	input c_in;
	output [15:0]sum;
	output c_out;
	output [14:0] line;
	
	full_adder full_adder_0 (a[0], b[0], c_in, sum[0], line[0]);
	full_adder full_adder_1 (a[1], b[1], line[0], sum[1], line[1]);
	full_adder full_adder_2 (a[2], b[2], line[1], sum[2], line[2]);
	full_adder full_adder_3 (a[3], b[3], line[2], sum[3], line[3]);
	full_adder full_adder_4 (a[4], b[4], line[3], sum[4], line[4]);
	full_adder full_adder_5 (a[5], b[5], line[4], sum[5], line[5]);
	full_adder full_adder_6 (a[6], b[6], line[5], sum[6], line[6]);
	full_adder full_adder_7 (a[7], b[7], line[6], sum[7], line[7]);
	full_adder full_adder_8 (a[8], b[8], line[7], sum[8], line[8]);
	full_adder full_adder_9 (a[9], b[9], line[8], sum[9], line[9]);
	full_adder full_adder_10 (a[10], b[10], line[9], sum[10], line[10]);
	full_adder full_adder_11 (a[11], b[11], line[10], sum[11], line[11]);
	full_adder full_adder_12 (a[12], b[12], line[11], sum[12], line[12]);
	full_adder full_adder_13 (a[13], b[13], line[12], sum[13], line[13]);
	full_adder full_adder_14 (a[14], b[14], line[13], sum[14], line[14]);
	full_adder full_adder_15 (a[15], b[15], line[14], sum[15], c_out);
	
endmodule
