`include "NOT.v"


module NOT_tb;
    // Registers
    reg[31:0]A;

    // Wires
    wire[31:0]NOT;

    // Instance of NOT module
    NOT not1(A, NOT);

    // Main
    initial begin
        // Check for arguments 
        if (! $value$plusargs("A=%d", A)) begin
            $display("ERROR: please specify +A=<value> to start.");
            $finish;
        end
        // Display Results
        $display ("A:        %d", A);
        // wait for 10ns
        #10;
        $display ("Output:   %d", NOT);
        $finish;
    end
endmodule