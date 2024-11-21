// Create a module called NORgate which accepts two inputs 
// and gives an ouput of Q 
module NORgate(A, B, Q);

    input A, B; // two input values called A, B 
    output Q; // one output value called Q 

    assign Q = !(A|B); // Logic gate is the NOR gate which is the OR gate but negated 

endmodule

// Create a module called NANDusingNor and use a series of NOR gates to create 
// a NAND gate
module NANDusingNor (A, B, Q); 

    input A, B; 
    output Q; 

    wire C, D, E, F; 
    /* Below is created from the logic gates from the power point to demonstrate that you can
       use NOR gates to create the NAND gate because its a universal gate 
    */
    NORgate u1(A, A, C); // u1 is an instance 
    NORgate u2(B, B, D); 
    NORgate u3(D, C, E); 
    NORgate u4(E, E, F); 
    
    assign Q = F; // assigns the last value to Q 

endmodule

// IS the seven gates buffer or the same one?? 

// Do not need to implement 
// Create all 7 gates using NOR gates 
/***********************************/ 
module ORusingNOR (A, B, Q); 

    input A, B; 
    output Q; 

    wire C, D; 

    NORgate(A, B, C); 
    NORgate(C, C, D); 

    assign Q = D; 

endmodule 

module ANDusingNOR (A, B, Q); 

    input A, B; 
    output Q; 

    wire C, D, E; 

    NORgate(A, A, C); 
    NORgate(B, B, D); 
    NORgate(C, D, E); 

    assign Q = E; 

endmodule

module NORusingNor (); 

    input A, B; 
    output Q; 

    NORgate(A, B, Q); 

endmodule 

module NANDusingNor (A, B, Q); 

    input A, B; 
    output Q; 

    wire C, D, E, F; 
    
    NORgate u1(A, A, C); 
    NORgate u2(B, B, D); 
    NORgate u3(D, C, E); 
    NORgate u4(E, E, F); 
    
    assign Q = F; 

endmodule

module NOTusingNOR (A, B, Q); 

    input A; 
    output Q; 

    NORgate u1(A, A, Q);

endmodule

module XORusingNOR(A, B, Q);  

    input A, B; 
    output Q; 

    NORgate(A, B, C); 
    NORgate(A, A, D); 
    NORgate(B, B, E); 
    NORgate(D, E, F); 
    NORgate(C, F, Q); 

endmodule

module XNORusingNOR(A, B, Q); 

    input A, B; 
    output Q; 

    NORgate(A, B, C); 
    NORgate(A, C, D); 
    NORgate(B, C, E); 
    NORgate(D, E, Q); 

endmodule
// Create all 7 gates using NAND gats 
module ANDusingNAND(); 

    input A, B; 
    output Q; 

    NANDgate(A, B, C); 
    NANDgate(C, C, Q);

endmodule 

module ORusingNAND(); 

    input A, B; 
    output Q; 

    NANDgate(A, A, C); 
    NANDgate(B, B, D); 
    NANDgate(C, D, Q); 

endmodule

module NORusingNAND(); 
   
    input A, B; 
    output Q; 

    wire C, D, E, F; 
    
    NANDgate u1(A, A, C); 
    NANDgate u2(B, B, D); 
    NANDgate u3(C, D, E); 
    NANDgate u4(E, E, F); 

endmodule 

module NANDusingNAND (); 

    input A, B; 
    output Q; 

    NANDgate(A, B, Q); 

endmodule 

module NOTusingNAND(); 

    NANDgate(A, A, Q); 

endmodule

module XORusingNAND(); 

    input A, B; 
    output Q; 

    NANDgate(A, B, C); 
    NANDgate(A, C, D); 
    NANDgate(B, C, E); 
    NANDgate(D, E, Q); 
    
endmodule 

module XNORusingNAND(); 

    input A, B; 
    output Q; 

    NANDgate(A, B, C); 
    NANDgate(A, A, D); 
    NANDgate(B, B, E); 
    NANDgate(D, E, F); 
    NANDgate(C, F, Q); 

endmodule
/************************************/ 
