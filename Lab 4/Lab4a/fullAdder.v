module halfAdder(op1, op2, sum, carry); // Module for half adder

    input op1, op2; 
    output sum, carry; 

    assign sum = op1 ^ op2; // ^ is the XOR operator  
    assign carry = op1 & op2; // & is the AND operator 

endmodule 

module fullAdder(A, B, carryIn, sum, carryOut); // module for full adder 
    // inputs and ouputs for the full adder 
    input A, B, carryIn; 
    output sum, carryOut; 
    // intermediary wires 
    wire c, d, e, f; 

    halfAdder u1(A, B, c, d); 
    halfAdder u2(carryIn, c, e, f); 

    assign carryOut = f | d; // This is the last gate to get the final output for carryout 
    assign sum = e; // equals to the e wire when finished 

endmodule

