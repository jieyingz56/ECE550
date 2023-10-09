# ECE550 Checkpoint 1 
Name: Jieying Zhang  
netID: jz450  

# full_adder  
My full_adder is a 1-bit adder, performing 1-bit calculations. The inputs are a, b, and c_in, and the outputs are the result c_out and sum. This 1-bit adder plays a fundamental role in building larger multi-bit adders and processors, forming the backbone of binary arithmetic operations.

# ripple_carry_adder  
My ripple carry adder is constructed using the previously mentioned 1-bit full adder, utilizing a total of 16 full adders. This assembly results in a ripple carry adder capable of performing 16-bit calculations.

# carry_select_adder  
My carry-select adder is constructed using the previously mentioned 16-bit ripple carry adder, with the 'wire' section providing a detailed description of the internal structure of my carry-select adder to achieve 32-bit addition.  

# Flip  
My Flip is designed to compute the two's complement of a 32-bit input  

# Mux_16bit_2to1  
My Mux_16bit_2to1 is designed to construct a 16-bit 2-to-1 multiplexer. When s is 0, the output is a, and when s is 1, the output is b.

# alu  
Within the ALU, the Flip function is invoked to obtain the two's complement of data_operandB, referred to as 'flipped_b.'   Subsequently, based on the least significant bit of ctrl_ALUopcode, addition or subtraction is determined.   For addition, if c_in=0, and b=data_operandB.   For subtraction, c_in=1, and b=flipped_b.   The operation is then carried out using the carry-select adder.  

Add bitwise, it control by the ctrl_ALUopcode's last input signal. when input is 0, use and_out, when input is 1, use or_out.  

Add Logical left-shift and Arithmetic right-shift on data_operandA.

isNotEqual: Using subtraction to determine whether data_operandA and data_operandB are equal. If the result is not equal to 0, it means data_operandA is not equal to data_operandB. Use an OR gate to evaluate each bit of the result of data_operandA - data_operandB, and the output is res. Then, use res for ternary evaluation to determine if data_operandA and data_operandB are equal. If, in the OR gate, every bit is 0, the res output is 0, indicating that data_operandA is equal to data_operandB. If there is a 1 in any bit inside the OR gate, the res output is 1, indicating that data_operandA and data_operandB are not equal.

isLessThan: Using subtraction to determine if data_operandA is less than data_operandB. First, use an XNOR gate to determine the signs of A and B, then use ternary logic to determine if data_operandA is less than data_operandB. If the signs of data_operandA and data_operandB are different, and same_sign is 0, then the result of the subtraction, ne_result's bit 31, is output. If the signs of data_operandA and data_operandB are the same, and same_sign is 1, then the result is based on the input of data_operandA's bit 31.  

# bitwise  
This Verilog module, named "bitwise," takes two 32-bit input signals, a and b, and performs bitwise operations (AND and OR) on each corresponding bit. The type of operation (AND or OR) is determined by the Opcode input. The module generates intermediate signals for each bit operation and outputs the result in the bit_out signal.  

# Mux_1bit_2to1  
My Mux_1bit_2to1 is designed to construct a 1-bit 2-to-1 multiplexer. When s is 0, the output is a, and when s is 1, the output is b.  

# SLL  
This Verilog module, named "SLL," implements a left shift logical operation.  It takes a 32-bit input signal SLL_in and a 5-bit shift signal that specifies the number of bits to shift.  The module uses multiple levels of Mux (multiplexer) selection modules to perform the shifting operation efficiently.  The result of the left shift operation is stored in the output signal SLL_out.  The module iteratively shifts the bits according to the specified shift amount, producing the final left-shifted result in SLL_out.  

# SRA  
This Verilog module, named "SRA," implements a right shift arithmetic operation.  It takes a 32-bit input signal SRA_in and a 5-bit shift signal that specifies the number of bits to shift.  The module uses multiple levels of Mux (multiplexer) selection modules to perform the shifting operation efficiently.  The result of the right shift operation is stored in the output signal SRA_out.  The module iteratively shifts the bits according to the specified shift amount, producing the final right-shifted result in SRA_out.
