`include "XOR.v"
module XOR_tb;
    // 32 bit registers
    reg[31:0]A;
    reg[31:0]B;

    // 32 bit wires
    wire[31:0]XOR;

// Instance of OR module
XOR xor1(A, B, XOR);
    initial begin
            // Check for arguments 
            if (! $value$plusargs("A=%d", A)) begin
                $display("ERROR: please specify +A=<value> to start.");
                $finish;
            end   
            if (! $value$plusargs("B=%d", B)) begin
                $display("ERROR: please specify +B=<value> to start.");
                $finish;
            end
            // display the variables and the output
            $display ("A:     %d", A);
            $display ("B:     %d", B);
            // wait for 10ns
            #10;
            $display ("Output:   %d", XOR);
            $finish;
        end
endmodule