# ECE550 Checkpoint 1 
Name: Jieying Zhang  
netID: jz450  

# decoder  
This module decodes a 5-bit control signal ctrl_writeReg into a 32-bit signal writeReg_out. It's used to select the register to write data into. It use 32 and-gate to build the module.

# dffe 
This module implements a D flip-flop used for register write operations. It determines whether data should be written based on the clock signal clock and control signals, and it can also reset the register when required. It's 32-bit, it will reset to 32'b0 when the clr signal is high.

# tristate_buffers  
This module implements tristate buffers that control whether the input signal Q_out should be passed to buffer_output. It's often used to manage data flow during read operations, allowing for data selection or disabling the output.

# regfile
