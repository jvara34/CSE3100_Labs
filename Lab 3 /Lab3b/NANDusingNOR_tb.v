// This is going to be the test bench for NANDusingNOR.v file 
`timescale 1ns/1ns // Time scale 
`include "NANDusingNOR.v" // including the previous file 

module NANDusingNOR_tb; 

    reg A; // input wire 
    reg B; // input wire 
    wire Q; // output from A, B 

    NANDusingNor uut(A, B, Q); // created unit under test 

initial begin 

    $dumpfile("NANDusingNOR_tb.vcd");
    $dumpvars(0, NANDusingNOR_tb); 

    A = 0; B = 0; #20 // Initiating A to 0 and B to 0 with time to pass is 20 nano seconds 
    A = 0; B = 1; #20 
    A = 1; B = 0; #20 
    A = 1; B = 1; #20 

    $display("Complete!"); // display once the program is complete
end 


endmodule 