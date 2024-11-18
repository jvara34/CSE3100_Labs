module SOPForm(X1, X2, F); // Sum of product form function 

    input X1, X2; // Created 2 variables X1, X2 
    output F; 

    assign F = (!X1&!X2 | !X1&X2 | X1&X2); // Equation in the SOP form of the boolean expression 

endmodule 

module minimizedForm(X1, X2, F); // minimized form function 
    
    input X1, X2; // Created 2 variables X1, X2
    output F; // function output 

    assign F = X2 | !X1; // Equation in the minimizedForm 

endmodule