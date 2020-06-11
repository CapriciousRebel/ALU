module HalfAdder(A, B, Sum, Carry);
    // Inputs
    input[31:0]A;
    input[31:0]B;
    
    // Outputs
    output reg[31:0]Sum;
    output reg[31:0]Carry;

    // Logic
    always@(A, B)
    begin
        // Sum is bitwise XOR of (A, B)
        // Carry is bitwise AND of (A, B)
        Sum     = A ^ B;
        Carry   = A & B;
    end
endmodule