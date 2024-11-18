`timescale 1ns/1ns // Created time scale 
`include "NORusingNAND.v" //including the file called NORusingNAND.v

module NORusingNAND_tb; // created test bench 

reg A; // Input wire from logic gate 
reg B; // Another input wire from logic gate
wire Q; // This is the output from the two inputs A, B 

NORusingNAND uut(A, B, Q); // uut is "unit under test" 

initial begin 

        $dumpfile("NORusingNAND_tb.vcd");
        $dumpvars(0, NORusingNAND_tb); 

        A = 0; B = 0; #20 // Initiating A to 0 and B to 0 with time to pass is 20 nano seconds 
        A = 0; B = 1; #20 
        A = 1; B = 0; #20 
        A = 1; B = 1; #20 
         
        $display("Complete!"); // Displays once the program has run correctly 
        

end 

endmodule