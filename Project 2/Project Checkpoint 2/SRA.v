module SRA(SRA_in, shift, SRA_out);
	input [31:0]SRA_in;
	input [4:0] shift;
	output [31:0]SRA_out;
	
	wire [31:0]l1, l2, l3, l4;
	
	
	genvar i;
	generate
	Mux_1bit_2to1 layer1_0(SRA_in[31], SRA_in[31], shift[0],l1[31]);
	for(i = 31; i > 0; i = i - 1) begin: shift_l1
		Mux_1bit_2to1 mux_layer1(SRA_in[i - 1], SRA_in[i], shift[0],l1[i - 1]);
	end

	Mux_1bit_2to1 layer2_0(l1[31], SRA_in[31], shift[1],l2[31]);
	Mux_1bit_2to1 layer2_1(l1[30], SRA_in[31], shift[1],l2[30]);
	for(i = 31; i > 1; i = i - 1) begin: shift_l2
		Mux_1bit_2to1 mux_layer2(l1[i - 2], l1[i], shift[1],l2[i - 2]);
	end
	
	Mux_1bit_2to1 layer3_0(l2[31], SRA_in[31], shift[2],l3[31]);
	Mux_1bit_2to1 layer3_1(l2[30], SRA_in[31], shift[2],l3[30]);
	Mux_1bit_2to1 layer3_2(l2[29], SRA_in[31], shift[2],l3[29]);
	Mux_1bit_2to1 layer3_3(l2[28], SRA_in[31], shift[2],l3[28]);
	for(i = 31; i > 3; i = i - 1) begin: shift_l3
		Mux_1bit_2to1 mux_layer3(l2[i - 4], l2[i], shift[2],l3[i - 4]);
	end
	
	Mux_1bit_2to1 layer4_0(l3[31], SRA_in[31], shift[3],l4[31]);
	Mux_1bit_2to1 layer4_1(l3[30], SRA_in[31], shift[3],l4[30]);
	Mux_1bit_2to1 layer4_2(l3[29], SRA_in[31], shift[3],l4[29]);
	Mux_1bit_2to1 layer4_3(l3[28], SRA_in[31], shift[3],l4[28]);
	Mux_1bit_2to1 layer4_4(l3[27], SRA_in[31], shift[3],l4[27]);
	Mux_1bit_2to1 layer4_5(l3[26], SRA_in[31], shift[3],l4[26]);
	Mux_1bit_2to1 layer4_6(l3[25], SRA_in[31], shift[3],l4[25]);
	Mux_1bit_2to1 layer4_7(l3[24], SRA_in[31], shift[3],l4[24]);
	for(i =31; i> 7; i = i - 1) begin: shift_l4
		Mux_1bit_2to1 mux_layer4(l3[i - 8], l3[i], shift[3],l4[i - 8]);
	end
	
	
	
	Mux_1bit_2to1 layer5_0(l4[31], SRA_in[31], shift[4],SRA_out[31]);
	Mux_1bit_2to1 layer5_1(l4[30], SRA_in[31], shift[4],SRA_out[30]);
	Mux_1bit_2to1 layer5_2(l4[29], SRA_in[31], shift[4],SRA_out[29]);
	Mux_1bit_2to1 layer5_3(l4[28], SRA_in[31], shift[4],SRA_out[28]);
	Mux_1bit_2to1 layer5_4(l4[27], SRA_in[31], shift[4],SRA_out[27]);
	Mux_1bit_2to1 layer5_5(l4[26], SRA_in[31], shift[4],SRA_out[26]);
	Mux_1bit_2to1 layer5_6(l4[25], SRA_in[31], shift[4],SRA_out[25]);
	Mux_1bit_2to1 layer5_7(l4[24], SRA_in[31], shift[4],SRA_out[24]);
	Mux_1bit_2to1 layer5_8(l4[23], SRA_in[31], shift[4],SRA_out[23]);
	Mux_1bit_2to1 layer5_9(l4[22], SRA_in[31], shift[4],SRA_out[22]);
	Mux_1bit_2to1 layer5_10(l4[21], SRA_in[31], shift[4],SRA_out[21]);
	Mux_1bit_2to1 layer5_11(l4[20], SRA_in[31], shift[4],SRA_out[20]);
	Mux_1bit_2to1 layer5_12(l4[19], SRA_in[31], shift[4],SRA_out[19]);
	Mux_1bit_2to1 layer5_13(l4[18], SRA_in[31], shift[4],SRA_out[18]);
	Mux_1bit_2to1 layer5_14(l4[17], SRA_in[31], shift[4],SRA_out[17]);
	Mux_1bit_2to1 layer5_15(l4[16], SRA_in[31], shift[4],SRA_out[16]);
	for(i = 31; i > 15; i = i - 1) begin: shift_l5
		Mux_1bit_2to1 mux_layer5(l4[i - 16], l4[i], shift[4],SRA_out[i - 16]);
	end
	
	
	endgenerate
	
endmodule
