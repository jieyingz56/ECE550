module SLL(SLL_in, shift, SLL_out);
	input [31:0]SLL_in;
	input [4:0] shift;
	output [31:0]SLL_out;
	
	wire [31:0]l1, l2, l3, l4;
	
	
	genvar i;
	generate 
	
	Mux_1bit_2to1 layer1_0(SLL_in[0], 1'b0, shift[0],l1[0]);
	for(i = 1; i < 32; i = i + 1) begin: shift_l1
		Mux_1bit_2to1 layer1_next(SLL_in[i], SLL_in[i - 1], shift[0],l1[i]);
		
	end

	Mux_1bit_2to1 layer2_0(l1[0], 1'b0, shift[1],l2[0]);
	Mux_1bit_2to1 layer2_1(l1[1], 1'b0, shift[1],l2[1]);
	for(i = 2; i < 32; i = i + 1) begin: shift_l2
		Mux_1bit_2to1 layer2_next(l1[i], l1[i - 2], shift[1],l2[i]);
	end
	
	Mux_1bit_2to1 layer3_0(l2[0], 1'b0, shift[2],l3[0]);
	Mux_1bit_2to1 layer3_1(l2[1], 1'b0, shift[2],l3[1]);
	Mux_1bit_2to1 layer3_2(l2[2], 1'b0, shift[2],l3[2]);
	Mux_1bit_2to1 layer3_3(l2[3], 1'b0, shift[2],l3[3]);
	for(i = 4; i < 32; i = i + 1) begin: shift_l3
		Mux_1bit_2to1 layer3_next(l2[i], l2[i - 4], shift[2],l3[i]);
	end
	
	Mux_1bit_2to1 layer4_0(l3[0], 1'b0, shift[3],l4[0]);
	Mux_1bit_2to1 layer4_1(l3[1], 1'b0, shift[3],l4[1]);
	Mux_1bit_2to1 layer4_2(l3[2], 1'b0, shift[3],l4[2]);
	Mux_1bit_2to1 layer4_3(l3[3], 1'b0, shift[3],l4[3]);
	Mux_1bit_2to1 layer4_4(l3[4], 1'b0, shift[3],l4[4]);
	Mux_1bit_2to1 layer4_5(l3[5], 1'b0, shift[3],l4[5]);
	Mux_1bit_2to1 layer4_6(l3[6], 1'b0, shift[3],l4[6]);
	Mux_1bit_2to1 layer4_7(l3[7], 1'b0, shift[3],l4[7]);
	for(i = 8; i < 32; i = i + 1) begin: shift_l4
		Mux_1bit_2to1 layer4_next(l3[i], l3[i - 8], shift[3],l4[i]);
	end
	
	
	
	Mux_1bit_2to1 layer5_0(l4[0], 1'b0, shift[4],SLL_out[0]);
	Mux_1bit_2to1 layer5_1(l4[1], 1'b0, shift[4],SLL_out[1]);
	Mux_1bit_2to1 layer5_2(l4[2], 1'b0, shift[4],SLL_out[2]);
	Mux_1bit_2to1 layer5_3(l4[3], 1'b0, shift[4],SLL_out[3]);
	Mux_1bit_2to1 layer5_4(l4[4], 1'b0, shift[4],SLL_out[4]);
	Mux_1bit_2to1 layer5_5(l4[5], 1'b0, shift[4],SLL_out[5]);
	Mux_1bit_2to1 layer5_6(l4[6], 1'b0, shift[4],SLL_out[6]);
	Mux_1bit_2to1 layer5_7(l4[7], 1'b0, shift[4],SLL_out[7]);
	Mux_1bit_2to1 layer5_8(l4[8], 1'b0, shift[4],SLL_out[8]);
	Mux_1bit_2to1 layer5_9(l4[9], 1'b0, shift[4],SLL_out[9]);
	Mux_1bit_2to1 layer5_10(l4[10], 1'b0, shift[4],SLL_out[10]);
	Mux_1bit_2to1 layer5_11(l4[11], 1'b0, shift[4],SLL_out[11]);
	Mux_1bit_2to1 layer5_12(l4[12], 1'b0, shift[4],SLL_out[12]);
	Mux_1bit_2to1 layer5_13(l4[13], 1'b0, shift[4],SLL_out[13]);
	Mux_1bit_2to1 layer5_14(l4[14], 1'b0, shift[4],SLL_out[14]);
	Mux_1bit_2to1 layer5_15(l4[15], 1'b0, shift[4],SLL_out[15]);
	for(i = 16; i < 32; i = i + 1) begin: shift_l5
		Mux_1bit_2to1 layer5_next(l4[i], l4[i - 16], shift[4],SLL_out[i]);
	end
	
	
	endgenerate
	
endmodule
