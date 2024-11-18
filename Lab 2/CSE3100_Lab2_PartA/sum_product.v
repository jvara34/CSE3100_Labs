module sum_product(); 
    
    integer a, b; // This is creating the integer variables called "a" and "b" with no value
    integer sum_int; // Creating an integer variable called "sum_int" no value 

    real x, y; // Creaing a floating variable called "x" and "y" with no value 
    real prod_real; // Creating a floating variable called "prob_real"

    initial begin // Starting the clock 
        a = 3; // Initialzing the variable "a" with the value 3
        b = 9; // Initialzing the variable "b" with the value 9 
        sum_int = a + b; // Adding "a" and "b" together and intializing to "sum_int" 
        $display("\n\t a = %0d, b = %0d, sum = %0d", a, b, sum_int); // Using string interpolation to display what the values of should be equal to 

        x = 99.67; // Initialzing the floating variable "x" with value 99.67
        y = 33.41; // Initialzing the floating variable "y" with value 33.41
        prod_real = x * y; // Multiplying values of x and y and initalizing to prod_real
        $display("\n\t x = %0.2f, y = %0.2f, prod_real = %0.2f\n", x, y, prod_real); // String interpolation with 0.2 which allows for 2 decimal places after the whole numbers in the value 
    end     

endmodule 