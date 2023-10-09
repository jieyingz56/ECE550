module alu(data_operandA, data_operandB, ctrl_ALUopcode, ctrl_shiftamt, data_result, isNotEqual, isLessThan, overflow);

   input [31:0] data_operandA, data_operandB;
   input [4:0] ctrl_ALUopcode, ctrl_shiftamt;

   output [31:0] data_result;
   output isNotEqual, isLessThan, overflow;

   // YOUR CODE HERE //
	wire alu_control;
   wire [31:0]flipped_b, b;
 
	//wire for checkpoint 2
	wire [31:0] bit_res, SLL_res, SRA_res;
	wire [31:0] ne_result;
	wire res, same_sign;
		
	//checkpoint1 part
	//assign last_add = 1'b0;
	//assign last_sub = 1'b1;
 
 
   Flip Flipb(data_operandB, flipped_b);
   assign b = ctrl_ALUopcode[0] ? flipped_b : data_operandB;
 
   
   
	
   //add & sub
   carry_select_adder carry_select_adder_0(data_operandA, b, ctrl_ALUopcode[0], csa_res, overflow);

	
	//and & or
	bitwise bitwise_opcode(data_operandA, data_operandB, ctrl_ALUopcode[0], bit_res);
	
	//SLL & SRA
	SLL sll_left(data_operandA, ctrl_shiftamt, SLL_res);
	SRA sra_right(data_operandA, ctrl_shiftamt, SRA_res);
	
	//isNotEqual
	wire ineof;
	carry_select_adder sub(data_operandA, b, 1'b1, ne_result, ineof);
	or my_or(res, ne_result[31], ne_result[30], ne_result[29], ne_result[28],
				ne_result[27], ne_result[26], ne_result[25], ne_result[24],
				ne_result[23], ne_result[22], ne_result[21], ne_result[20],
				ne_result[19], ne_result[18], ne_result[17], ne_result[16],
				ne_result[15], ne_result[14], ne_result[13], ne_result[12],
				ne_result[11], ne_result[10], ne_result[9], ne_result[8], 
				ne_result[7], ne_result[6], ne_result[5], ne_result[4],
				ne_result[3],ne_result[2], ne_result[1], ne_result[0]);			
	assign isNotEqual = res ? 1'b1 : 1'b0;
	
	//isLessThan
	xnor my_xnor(same_sign, data_operandA[31], b[31]);
	assign isLessThan = same_sign ? data_operandA[31] : ne_result[31] ;
	


	
	

	
endmodule
