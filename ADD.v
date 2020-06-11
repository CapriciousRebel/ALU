`include "FullAdder.v"

module ADD(A, B, CarryIn, Sum, CarryOut);
    // Input
    input[31:0]A;
    input[31:0]B;
    input[31:0]CarryIn;
    // Output
    output [31:0]Sum;
    output [31:0]CarryOut;
    // Instance of FullAdder module
    FullAdder fa1(A, B, CarryIn, Sum, CarryOut);
endmodule