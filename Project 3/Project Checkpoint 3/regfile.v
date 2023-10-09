module regfile (
    clock,
    ctrl_writeEnable,
    ctrl_reset, ctrl_writeReg,
    ctrl_readRegA, ctrl_readRegB, data_writeReg,
    data_readRegA, data_readRegB
);

   input clock, ctrl_writeEnable, ctrl_reset;
   input [4:0] ctrl_writeReg, ctrl_readRegA, ctrl_readRegB;
   input [31:0] data_writeReg;

   output [31:0] data_readRegA, data_readRegB;

   /* YOUR CODE HERE */
	
	//wire
	wire [31:0] writeReg_out; 
	wire [31:0] reg_enable;
	wire [31:0] q [0:31];
	
	wire [31:0]readReg_A;
	wire [31:0]readReg_B;
	
	
	
	//decode 5-bit control to 32-bit signal
	decoder my_decoder(ctrl_writeReg, writeReg_out); 
	decoder my_decoder_A(ctrl_readRegA, readReg_A);
	decoder my_decoder_B(ctrl_readRegB, readReg_B);
	
	//initialize the first register always be zero
	dffe trans_0(q[0], 32'b0, clock, 1'b0, ctrl_reset);
	tristate_buffers RpA(q[0], readReg_A[0], data_readRegA);
	tristate_buffers RpB(q[0], readReg_B[0], data_readRegB);
	
	//WRITE PORT
	
	//use the 32-bit signal to choose the register
	genvar i;
	
	generate
		for (i = 0; i < 32; i = i + 1) begin: choose_register
		and my_and(reg_enable[i], ctrl_writeEnable, writeReg_out[i]); 
		end
	endgenerate //end of choose register
	
	//get the output Q
	
	generate
		for (i = 1; i < 32; i = i + 1) begin: q_outvalue
		dffe trans(q[i], data_writeReg, clock, reg_enable[i], ctrl_reset);
		end
	endgenerate



	//READ PORT	

	generate for(i = 0; i < 32; i = i + 1) begin: read_port
	tristate_buffers port_A(q[i], readReg_A[i], data_readRegA);
	tristate_buffers port_B(q[i], readReg_B[i], data_readRegB);
	end
	endgenerate

	
endmodule
