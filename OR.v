module OR(A, B, Output);
    // Inputs
    input[31:0]A;   // 32 bit input A
    input[31:0]B;   // 32 bit input B

    // Outputs
    output[31:0]Output;  // bitwise OR of A and B

    // Registers
    reg[31:0]Output;
    
    // Main
    always@(A, B)
    begin
        // Output is bitwise OR of (A, B)
        Output = A | B;
    end
endmodule