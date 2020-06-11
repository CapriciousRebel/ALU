`include "FullAdder.v"
module FullAdder_tb;
    // 32 bit registers
    reg[31:0]A;
    reg[31:0]B;
    reg[31:0]carry_in;

    // 32 bit wires
    wire[31:0]Sum;
    wire[31:0]Carry;

// Instance of OR module
FullAdder fa1(A, B, carry_in, Sum, Carry);
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
            if (! $value$plusargs("Carry=%d", carry_in)) begin
                $display("ERROR: please specify +Carry=<value> to start.");
                $finish;
            end
            // display the variables and the output
            $display ("A:     %d", A);
            $display ("B:     %d", B);
            $display ("carry_in:     %d", carry_in);
            // wait for 10ns
            #10;
            $display ("Sum:   %d", Sum);
            $display ("Carry:   %d", Carry);
            $finish;
        end
endmodule