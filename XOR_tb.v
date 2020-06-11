`include "XOR.v"

module XOR_tb;
    // Registers
    reg[31:0]A;
    reg[31:0]B;

    // Wires
    wire[31:0]XOR;

    // Instance of XOR module
    XOR xor1(A, B, XOR);

    // Main
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
        // Display Results
        $display ("A:     %d", A);
        $display ("B:     %d", B);
        // wait for 10ns
        #10;
        $display ("Output:   %d", XOR);
        $finish;
        end
endmodule