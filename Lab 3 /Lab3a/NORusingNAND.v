module NANDgate(A, B, Q); // This module is representing the NAND gate 

    input A, B; 
    output Q; 

    assign Q = !(A&B); // The logic expression for the NAND gate its simply the AND gate but Negated 

endmodule 

module NORusingNAND (A, B, Q); // This module is representing the NOR gate using the NAND gate 

    input A, B; 
    output Q; 

    wire C, D, E, F; 
    /* Below is created from the logic gates from the power point to demonstrate that you can
       use NAND gates to create the NOR gate because its a universal gate 
    */
    NANDgate u1(A, A, C); // u1 is an instance of this wires 
    NANDgate u2(B, B, D); 
    NANDgate u3(C, D, E); 
    NANDgate u4(E, E, F); 

    assign Q = F; // Assinging the final value to Q instead of F 

endmodule