`include "AND.v"


module AND_tb;
    // Registers
    reg[31:0]A;
    reg[31:0]B;

    // Wires
    wire[31:0]AND;

    // Instance of AND module
    AND and1(A, B, AND);

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
        $display ("Output:   %d", AND);
        $finish;
    end
endmodule