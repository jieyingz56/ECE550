module decoder(de_in, de_out);
	input [4:0] de_in;
	output [31:0] de_out;
	
	wire [4:0] nde_in;
	
	not(nde_in[0],de_in[0]);
	not(nde_in[1],de_in[1]);
	not(nde_in[2],de_in[2]);
	not(nde_in[3],de_in[3]);
	not(nde_in[4],de_in[4]);
	
	and my_and0(de_out[0], nde_in[4], nde_in[3], nde_in[2], nde_in[1], nde_in[0]);
	and my_and1(de_out[1], nde_in[4], nde_in[3], nde_in[2], nde_in[1], de_in[0]);
	and my_and2(de_out[2], nde_in[4], nde_in[3], nde_in[2], de_in[1], nde_in[0]);
	and my_and3(de_out[3], nde_in[4], nde_in[3], nde_in[2], de_in[1], de_in[0]);
	and my_and4(de_out[4], nde_in[4], nde_in[3], de_in[2], nde_in[1], nde_in[0]);
	and my_and5(de_out[5], nde_in[4], nde_in[3], de_in[2], nde_in[1], de_in[0]);
	and my_and6(de_out[6], nde_in[4], nde_in[3], de_in[2], de_in[1], nde_in[0]);
	and my_and7(de_out[7], nde_in[4], nde_in[3], de_in[2], de_in[1], de_in[0]);
	
	and my_and8(de_out[8], nde_in[4], de_in[3], nde_in[2], nde_in[1], nde_in[0]);
	and my_and9(de_out[9], nde_in[4], de_in[3], nde_in[2], nde_in[1], de_in[0]);
	and my_and10(de_out[10], nde_in[4], de_in[3], nde_in[2], de_in[1], nde_in[0]);
	and my_and11(de_out[11], nde_in[4], de_in[3], nde_in[2], de_in[1], de_in[0]);
	and my_and12(de_out[12], nde_in[4], de_in[3], de_in[2], nde_in[1], nde_in[0]);
	and my_and13(de_out[13], nde_in[4], de_in[3], de_in[2], nde_in[1], de_in[0]);
	and my_and14(de_out[14], nde_in[4], de_in[3], de_in[2], de_in[1], nde_in[0]);
	and my_and15(de_out[15], nde_in[4], de_in[3], de_in[2], de_in[1], de_in[0]);
	
	and my_and16(de_out[16], de_in[4], nde_in[3], nde_in[2], nde_in[1], nde_in[0]);
	and my_and17(de_out[17], de_in[4], nde_in[3], nde_in[2], nde_in[1], de_in[0]);
	and my_and18(de_out[18], de_in[4], nde_in[3], nde_in[2], de_in[1], nde_in[0]);
	and my_and19(de_out[19], de_in[4], nde_in[3], nde_in[2], de_in[1], de_in[0]);
	and my_and20(de_out[20], de_in[4], nde_in[3], de_in[2], nde_in[1], nde_in[0]);
	and my_and21(de_out[21], de_in[4], nde_in[3], de_in[2], nde_in[1], de_in[0]);
	and my_and22(de_out[22], de_in[4], nde_in[3], de_in[2], de_in[1], nde_in[0]);
	and my_and23(de_out[23], de_in[4], nde_in[3], de_in[2], de_in[1], de_in[0]);
	
	and my_and24(de_out[24], de_in[4], de_in[3], nde_in[2], nde_in[1], nde_in[0]);
	and my_and25(de_out[25], de_in[4], de_in[3], nde_in[2], nde_in[1], de_in[0]);
	and my_and26(de_out[26], de_in[4], de_in[3], nde_in[2], de_in[1], nde_in[0]);
	and my_and27(de_out[27], de_in[4], de_in[3], nde_in[2], de_in[1], de_in[0]);
	and my_and28(de_out[28], de_in[4], de_in[3], de_in[2], nde_in[1], nde_in[0]);
	and my_and29(de_out[29], de_in[4], de_in[3], de_in[2], nde_in[1], de_in[0]);
	and my_and30(de_out[30], de_in[4], de_in[3], de_in[2], de_in[1], nde_in[0]);
	and my_and31(de_out[31], de_in[4], de_in[3], de_in[2], de_in[1], de_in[0]);
	
endmodule
	

	
	