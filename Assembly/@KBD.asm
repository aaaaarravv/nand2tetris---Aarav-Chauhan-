@KBD      // Loads the memory address of the keyboard (RAM[24576]) into the A-register.
D=M       // Reads the current key code from the keyboard and stores it in the D-register.
@113      // Loads the constant value 113 (ASCII code for 'q') into the A-register.
D=D-A     // Subtracts 113 from the key code in D (result is 0 if 'q' was pressed).
@END      // Loads the instruction address of the 'END' label into the A-register.
D;JEQ     // If D equals 0 (meaning 'q' was pressed), jumps to the 'END' label.
