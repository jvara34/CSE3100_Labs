`timescale 1ns/1ns  // added timescale 
`include "CircuitD.v" // Included file called CircuitD.v 

module CircuitD_tb; 

    reg A, B, C; // created Registers A, B, C
    wire POSForm_F; // Created wire for product of sum form 
    wire minimizedForm_F; // Created wire for minimizedForm 

    POS uut(A, B, C, POSForm_F); // Declaration of the module POS with instance of uut and passing input and output variable in same order 
    minimizedForm uut2(A, B, C, minimizedForm_F);  // Declaration of the module minimizedForm with instance of uut2 and passing input and output variable in same order 


    initial begin 
        $dumpfile("CircuitD_tb.vcd"); // Saving the waveforms to vcd file 
        $dumpvars(0, CircuitD_tb); 

        // Truth Table with amount time #20 nano seconds 

        A = 0; B = 0; C = 0; #20 
        A = 0; B = 0; C = 1; #20 
        A = 0; B = 1; C = 0; #20 
        A = 0; B = 1; C = 1; #20 
        A = 1; B = 0; C = 0; #20 
        A = 1; B = 0; C = 1; #20 
        A = 1; B = 1; C = 0; #20 
        A = 1; B = 1; C = 1; #20 

        $display("Complete"); // Displays to the terminal that the program ran 

    end 

endmodule


        