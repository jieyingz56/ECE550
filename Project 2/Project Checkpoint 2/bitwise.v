module bitwise(a, b, Opcode, bit_out);
	input [31:0]a, b;
	input Opcode;
	output [31:0]bit_out;
	
	wire [31:0]and_out, or_out;

	genvar i;
	
	generate 
		for(i = 0; i < 32; i = i + 1) begin: and_loop
			and(and_out[i], a[i], b[i]);
		end
	
	endgenerate

	generate 
		for(i = 0; i < 32; i = i + 1) begin: or_loop
			or(or_out[i], a[i], b[i]);
		end
	endgenerate
	
	assign bit_out[31:0] = Opcode ? or_out[31:0] : and_out[31:0];

	
endmodule
