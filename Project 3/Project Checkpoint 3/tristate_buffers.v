module tristate_buffers(Q_out, buffer_select, buffer_output);
	input [31:0] Q_out;
	input buffer_select;
	output [31:0] buffer_output;
	
	genvar i;
	generate for(i = 0; i < 32; i = i + 1) begin: buffer_loop
	assign buffer_output[i] = buffer_select ? Q_out[i] : 1'bz;
	end
	endgenerate

endmodule 