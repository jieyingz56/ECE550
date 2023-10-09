module carry_select_adder(a, b, alu_control, sum, overflow);
  input [31:0] a;
  input [31:0] b;
  input alu_control;
  output [31:0] sum; 
  output overflow;

  wire [15:0] sum_low;
  wire c_out_low;
  //low 16-bit
  wire c_in_high_0;
  wire [15:0] sum_high_0;
  wire c_out_high_0;
  assign c_in_high_0 = 1'b0;
  //high_0 16-bit
  wire c_in_high_1;
  wire [15:0] sum_high_1;
  wire c_out_high_1;
  assign c_in_high_1 = 1'b1;
  //high_1 16-bit
  wire [14:0] line_low;
  wire [14:0] line_high_0;
  wire [14:0] line_high_1;
  //line
  wire [15:0] high_sum;
  //out high_sum
  wire high_c_out;
  wire high_line;

  ripple_carry_adder csa_low(a[15:0], b[15:0], alu_control, sum_low, c_out_low, line_low);
  ripple_carry_adder csa_high_0(a[31:16], b[31:16], c_in_high_0, sum_high_0, c_out_high_0, line_high_0);
  ripple_carry_adder csa_high_1(a[31:16], b[31:16], c_in_high_1, sum_high_1,c_out_high_1,line_high_1);

  Mux_16bit_2to1 Mux_1(sum_high_0, sum_high_1, c_out_low, high_sum);
  assign sum[15:0] = sum_low;
  assign sum[31:16] = high_sum;
  
  
  
  Mux_16bit_2to1 Mux_2(c_out_high_0, c_out_high_1, c_out_low, high_c_out);
  Mux_16bit_2to1 Mux_3(line_high_0[14], line_high_1[14], c_out_low, high_line);
  
  xor my_xor(overflow, high_c_out, high_line);
  
endmodule

  
  
  

  
  
  

  
  