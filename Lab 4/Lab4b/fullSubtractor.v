module halfSubtractor(op1, op2, diff, borrow);
    // Look at power point to explain the code 
    input op1, op2; 
    output diff, borrow; 

    assign diff = op1 ^ op2; 
    assign borrow = !op1 & op2; 

endmodule 

module fullSubtractor(A, B, borrowIn, diff, borrowOut);

    input A, B, borrowIn; 
    output diff, borrowOut; 

    wire c, d, e, f;

    halfSubtractor u1(A, B, c, d);
    halfSubtractor u2(borrowIn, c, e, f); 

    assign borrowOut = f | d; // This does not work?? 
    // I followed the full subtractor gates and its similar to the full adder still
    // does not work? What am I missing? 
    assign diff = e; 
 
endmodule 

//(!A & B) | ((!(A ^ B)) & borrowIn); 