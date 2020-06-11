`include "ALU.v"
module ALU_tb;
    // 32 bit registers
    reg[31:0]A;
    reg[31:0]B;
    reg[2:0]OpCode;
    reg[31:0]CarryIn;

    // 32 bit wires
    wire[31:0]Output;
    wire[31:0]CarryOut;

// Instance of ALU module
ALU alu1(A, B, OpCode, CarryIn, Output, CarryOut);
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
            if (! $value$plusargs("Op=%d", OpCode)) begin
                $display("ERROR: please specify +Op=<value> to start.");
                $finish;
            end
            if (! $value$plusargs("Ci=%d", CarryIn)) begin
                $display("ERROR: please specify +Ci=<value> to start.");
                $finish;
            end
            // display the variables and the output
            $display ("A:          %d", A);
            $display ("B:          %d", B);
            $display ("OpCode:     %d", OpCode);
            $display ("CarryIn:    %d", CarryIn);
            // wait for 10ns
            #10;
            $display ("Output:     %d", Output);
            $display ("CarryOut:   %d", CarryOut);
            $finish;
        end
endmodule