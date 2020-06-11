`include "NOT.v"
module NOT_tb;
    // 32 bit registers
    reg[31:0]A;

    // 32 bit wires
    wire[31:0]NOT;

// Instance of NOT module
NOT not1(A, NOT);
    initial begin
            // Check for arguments 
            if (! $value$plusargs("A=%d", A)) begin
                $display("ERROR: please specify +A=<value> to start.");
                $finish;
            end
            // display the variables and the output
            $display ("A:        %d", A);
            // wait for 10ns
            #10;
            $display ("Output:   %d", NOT);
            $finish;
        end
endmodule