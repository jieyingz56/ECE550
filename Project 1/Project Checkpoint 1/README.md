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


