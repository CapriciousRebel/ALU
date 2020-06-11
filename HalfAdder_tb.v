`include "HalfAdder.v"


module HalfAdder_tb;
    // Registers
    reg[31:0]A;   
    reg[31:0]B;   
    
    // Wires
    wire[31:0]Sum;  
    wire[31:0]Carry;  

    // Instance of HalfAdder module
    HalfAdder ha1(A, B, Sum, Carry);

    // Main
    initial begin
        // Check for arguments 
        if (! $value$plusargs("A=%d", A)) begin
            $display("ERROR! Argument missing. format: +A=<value> +B=<value>");
            $finish;
        end   
        if (! $value$plusargs("B=%d", B)) begin
            $display("ERROR! Argument missing. format: +A=<value> +B=<value>");
            $finish;
        end
        // Display Results
        $display ("A:     %d", A);
        $display ("B:     %d", B);
        // wait for 10ns
        #10;
        $display ("Sum:   %d", Sum);
        $display ("Carry: %d", Carry);
        $finish;
    end
endmodule