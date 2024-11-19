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

    NORgate u1(A, A, C); // u1 is an instance 
    NORgate u2(B, B, D); 
    NORgate u3(D, C, E); 
    NORgate u4(E, E, F); 
    
    assign Q = F; 

endmodule



// Do not need to implement 
// Create all 7 gates using NOR gates 

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
// Create all 7 gates using NAND gats 
