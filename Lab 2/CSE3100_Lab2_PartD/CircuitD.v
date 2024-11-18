module POS(X1, X2, X3, F); // Created module which is the Product of Sum Form 
    
    input X1, X2, X3; // Created input variables X1, X2, X3
    output F; // output variable called F 

    assign F = (1&!X2&X3 | X1&1&!X3); // Synthesized Product of sum form 

endmodule

module minimizedForm(X1, X2, X3, F); // Created module for minimized form 

    input X1, X2, X3; // Created input variables X1, X2, X3
    output F; // output variable called F 

    assign F = (!X2&X3 | X1&!X3); // Synthesized of minimized form 

endmodule 