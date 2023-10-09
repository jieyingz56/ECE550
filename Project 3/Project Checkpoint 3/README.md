# ECE550 Checkpoint 1 
Name: Jieying Zhang  
netID: jz450  

# decoder  
This module decodes a 5-bit control signal ctrl_writeReg into a 32-bit signal writeReg_out. It's used to select the register to write data into. It use 32 and-gate to build the module.

# dffe 
This module implements a D flip-flop used for register write operations. It determines whether data should be written based on the clock signal clock and control signals, and it can also reset the register when required. It's 32-bit, it will reset to 32'b0 when the clr signal is high.

# tristate_buffers  
This module implements a three-state buffer that determines whether to output the input Q_out signal to buffer_output based on the buffer_select signal. This is typically used for read operations to select data to read from a register or to disable output.

# regfile  
Regfilr as the main register file module, it incorporates both write and read ports.  It selects the appropriate register for data writing based on control signals and clocking and reads data from the selected registers.  This module enables the organization and manipulation of data within a 32-register file. The first register is initialized, ensuring that it is in a state that cannot be written, and that it is also read 32 'b0.
