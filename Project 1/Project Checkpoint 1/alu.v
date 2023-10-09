module alu(data_operandA, data_operandB, ctrl_ALUopcode, ctrl_shiftamt, data_result, isNotEqual, isLessThan, overflow);

   input [31:0] data_operandA, data_operandB;
   input [4:0] ctrl_ALUopcode, ctrl_shiftamt;

   output [31:0] data_result;
   output isNotEqual, isLessThan, overflow;

   // YOUR CODE HERE //
	wire alu_control;
   wire [31:0]flipped_b, b;
	
	assign last_add = 1'b0;
	assign last_sub = 1'b1;
   //assign alu_control = ctrl_ALUopcode[0] ? last_sub : last_add;
 
   Flip Flipb(data_operandB, flipped_b);
   assign b = ctrl_ALUopcode[0] ? flipped_b : data_operandB;
 
   carry_select_adder carry_select_adder_0(data_operandA, b, ctrl_ALUopcode[0], data_result, overflow);

	
	
endmodule

