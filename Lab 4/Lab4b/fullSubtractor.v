module halfSubtractor(op1, op2, diff, borrow)
    // Look at power point to explain the code 
    input op1, op2; 
    output diff, borrow; 

    diff = op1 ^ op2; 
    borrow = !op1 & op2; 

endmodule 

module fullSubtractor()

endmodule 