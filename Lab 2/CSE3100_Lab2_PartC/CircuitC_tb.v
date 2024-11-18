`timescale 1ns/1ns          // Added time 
`include "CircuitC.v"       // including the file "CircuitC.V" 

module CircuitC_tb; 

    reg A, B;               // Created Registers A and B 
    wire SOPForm_F;         // Created wire called SOPForm_F 
    wire minimizedForm_F;   // Created another wire called minimizedForm_F 
                            // X1 = A, X2 = B, F = F
    SOPForm uut(A, B, SOPForm_F);               // Declaration of the module SOPForm  with instance of uut and passing the input and output variable in order A, B, and SOPForm_F 
    minimizedForm uut2(A, B, minimizedForm_F);  // Declaration of the module minimizedForm with instance of uut2 and passing the input and output variables in correct order 

    initial begin 
        $dumpfile("CircuitC_tb.vcd");           // Saving the waveforms into a vcd file    
        $dumpvars(0, CircuitC_tb); 
        // This is the truth table with the 0 and 1 
        A = 0; B = 0; #20       // #20 is the amount of time which is in nano seconds 
        A = 0; B = 1; #20 
        A = 1; B = 0; #20 
        A = 1; B = 1; #20 

        $display("Complete"); // Displays to the terminal when the program is complete and shows that it runs 
    end 

endmodule 