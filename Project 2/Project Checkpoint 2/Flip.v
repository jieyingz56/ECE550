module Flip(original_b, flip_b);

 input [31:0]original_b;
 output [31:0]flip_b;
 
 genvar i;
 generate 
    for (i = 0; i < 32; i = i + 1) begin: flipped_b
    not flipped_b(flip_b[i], original_b[i]);
    end
    
 endgenerate
 
 
endmodule
