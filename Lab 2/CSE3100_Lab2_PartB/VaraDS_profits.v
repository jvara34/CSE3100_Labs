module VaraDS_profit();

    real DS_rev; // created the variables that I will be using 
    real DS_exp; 
    real DS_percent; 
    real sum; 

    initial begin 
        DS_rev = 250000; // initialization of the variables with their respected values 
        DS_exp = 175000; 
        DS_percent = 0.25; 

        // Calculate amount of proift share 
        sum = (DS_rev - DS_exp) * DS_percent; 
        $display("\n\tDS_rev = %0d, DS_exp = %0d, DS_percent = %0d", DS_rev, DS_exp, DS_percent); // Displaying the variables with their values 
        $display("\n\tCalculated amount to profit-share = %0.2f\n", sum); // Displaying the calculated amount of profit share with 2 decimal places afterwards 

    end 
endmodule