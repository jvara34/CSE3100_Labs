`timescale 1ns / 1ns 
`include "fullSubtractor.v" 

module fullSubtractor_tb; 

    reg A, B, borrowIn; // created reg for A , B, borrowIn 
    wire diff, borrowOut; 

    fullSubtractor uut(A, B, borrowIn, diff, borrowOut); // uut is "unit under test" 

initial begin 

    $dumpfile("fullSubtractor_tb.vcd"); 
    $dumpvars(0, fullSubtractor_tb); 

    {A, B, borrowIn} = 3'd0; #20; // Short handed way of sending inputs 
    {A, B, borrowIn} = 3'd1; #20; // Treat the 3 one bit binary numbers as a 3 bit binary number 
    {A, B, borrowIn} = 3'd2; #20; // 3'd2 is the 3 binary number that equals 2 base 10 
    {A, B, borrowIn} = 3'd3; #20; // Also waited 20 nano seconds 
    {A, B, borrowIn} = 3'd4; #20;
    {A, B, borrowIn} = 3'd5; #20;
    {A, B, borrowIn} = 3'd6; #20;
    {A, B, borrowIn} = 3'd7; #20;

    $display("Finished subtractions!"); // display once finished 

end 

endmodule 