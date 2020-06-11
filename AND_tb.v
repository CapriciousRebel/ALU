`include "AND.v"
module AND_tb;
    // 32 bit registers
    reg[31:0]A;
    reg[31:0]B;

    // 32 bit wires
    wire[31:0]AND;

// Instance of AND module
AND and1(A, B, AND);
    initial begin
            // Check AND arguments
            if (! $value$plusargs("A=%d", A)) begin
                $display("ERROR! Argument missing. format: +A=<value> +B=<value>");
                $finish;
            end
            if (! $value$plusargs("B=%d", B)) begin
                $display("ERROR! Argument missing. format: +A=<value> +B=<value>");
                $finish;
            end
            // display the variables and the output
            $display ("A:     %d", A);
            $display ("B:     %d", B);
            // wait for 10ns
            #10;
            $display ("Output:   %d", AND);
            $finish;
        end
endmodule