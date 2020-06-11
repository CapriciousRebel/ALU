`include "HalfAdder.v"
module HalfAdder_tb;
    
    // declare the regs
    reg[31:0] a;   
    reg[31:0] b;   
    
    // declare the wires
    wire [31:0]sum;  
    wire [31:0]carry;  

// Use HalfAdder
HalfAdder ha1(a,b,sum,carry);
    initial begin
            // Check for arguments 
            if (! $value$plusargs("a=%d", a)) begin
                $display("ERROR: please specify +a=<value> to start.");
                $finish;
            end   
            if (! $value$plusargs("b=%d", b)) begin
                $display("ERROR: please specify +b=<value> to start.");
                $finish;
            end
            // display the variables and the output
            $display ("a: %d ",a);
            $display ("b: %d",b);
            // wait for 10ns
            #10;
            $display ("sum: %d", sum);
            $display ("carry: %d", carry);
            $finish;
        end
endmodule