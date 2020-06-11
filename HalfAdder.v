module HalfAdder(A, B, Sum, Carry);
    // Inputs
    input[31:0]       A;   // 32 bit input A
    input[31:0]       B;   // 32 bit input B

    // Outputs
    output[31:0]    Sum;  // sum of a+b
    output[31:0]  Carry;  // carry of a+b

    // Registers
    reg[31:0]       Sum;
    reg[31:0]     Carry;

    // Main
    always@(A, B)
    begin
        // Sum is bitwise XOR of (A, B)
        Sum     = A ^ B;
        // Carry is bitwise AND of (A, B)
        Carry   = A & B;  
    end
endmodule