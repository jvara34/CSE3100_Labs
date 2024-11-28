`timescale 1ns / 1ns 
`include "fullAdder.v" 

module fullAdder_tb; 

    reg A, B, carryIn; 
    wire sum, carryOut; 

    fullAdder uut(A, B, carryIn, sum, carryOut); // uut is "unit under test" 


initial begin   

    $dumpfile("fullAdder_tb.vcd"); 
    $dumpvars(0, fullAdder_tb); 

    {A, B, carryIn} = 3'd0; #20; // Short handed way of sending inputs 
    {A, B, carryIn} = 3'd1; #20; // Treat the 3 one bit binary numbers as a 3 bit binary number
    {A, B, carryIn} = 3'd2; #20; // 3'd2 is the 3 binary number that equals 2 base 10
    {A, B, carryIn} = 3'd3; #20; // Also waited 20 nano seconds 
    {A, B, carryIn} = 3'd4; #20;
    {A, B, carryIn} = 3'd5; #20;
    {A, B, carryIn} = 3'd6; #20;
    {A, B, carryIn} = 3'd7; #20;

    $display("Finished additions!"); // display once program is finished  

end 

endmodule 