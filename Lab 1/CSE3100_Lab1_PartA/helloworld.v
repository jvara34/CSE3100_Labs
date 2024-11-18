module hello_world ();                       // hello_world is name of the module 
                                             // This program display Hello World to the terminal 
    initial begin                            // Start clock 
            $display("\n\t Hello World \n"); // create new line, indent, outputs Hello World, then creates a new line again 
            $finish; 
    end     
endmodule 