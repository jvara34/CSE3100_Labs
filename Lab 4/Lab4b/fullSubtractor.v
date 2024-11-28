module halfSubtractor(op1, op2, diff, borrow);

    input op1, op2; 
    output diff, borrow; 

    assign diff = op1 ^ op2; // op1 xor op2
    assign borrow = !op1 & op2; // not op1 AND op2 
 
endmodule 

module fullSubtractor(A, B, borrowIn, diff, borrowOut);

    input A, B, borrowIn; 
    output diff, borrowOut; 

    wire c, d, e, f; // all the wires ulitized 

    halfSubtractor u1(A, B, c, d);
    halfSubtractor u2(c, borrowIn, e, f); // c is first instead of borrowIn because working on fullSubtractor not fullAdder 

    assign borrowOut = f | d; 
    assign diff = e; 
 
endmodule 
 