`include "ALU.v"
module ALU_tb;
    // 32 bit registers
    reg[31:0]A;
    reg[31:0]B;
    reg[2:0]Operation;

    // 32 bit wires
    wire[31:0]Output;

// Instance of OR module
ALU alu1(A, B, Operation, Output);
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
            if (! $value$plusargs("Op=%d", Operation)) begin
                $display("ERROR: please specify +Op=<value> to start.");
                $finish;
            end
            // display the variables and the output
            $display ("A:     %d", A);
            $display ("B:     %d", B);
            $display ("Operation:     %d", Operation);
            // wait for 10ns
            #10;
            $display ("Output:   %d", Output);
            $finish;
        end
endmodule