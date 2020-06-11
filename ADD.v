`include "FullAdder.v"


module ADD(A, B, CarryIn, Sum, CarryOut);
    // Inputs
    input[31:0]A;
    input[31:0]B;
    input[31:0]CarryIn;
    
    // Outputs
    output [31:0]Sum;
    output [31:0]CarryOut;
    
    // Logic
    FullAdder fa1(A, B, CarryIn, Sum, CarryOut);
endmodule