module introduction (); 
    reg [8*6:1] firstname; // Declaring a string var the 6 matches the amount of characters in the name "Julian"
    reg [8*4:1] lastname;  // 4 matches the amount of characters in "Vara"
    integer years;         // Declaring a int var

    initial begin             // Start clock
        firstname = "Julian"; // Initializing firstname with Julian 
        lastname = "Vara";    // Initializing lastname with Vara 
        years = 1;            // Initializing years with 1 

        $display("\n\t Hello, my name is %s %s and I have been attending CSUSB for %0d years.", firstname, lastname, years); // Displays the text to the terminal 
        $display("\t I am a student in CSE3100. \n"); 
        $finish; 
    end
endmodule