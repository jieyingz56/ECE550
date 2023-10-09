# ECE550 Checkpoint 1 
Name: Jieying Zhang  
netID: jz450  

# decoder  
This module decodes a 5-bit control signal ctrl_writeReg into a 32-bit signal writeReg_out. It's used to select the register to write data into. It use 32 and-gate to build the module.

# dffe 
This module implements a D flip-flop used for register write operations. It determines whether data should be written based on the clock signal clock and control signals, and it can also reset the register when required.

# tristate_buffers

# regfile
