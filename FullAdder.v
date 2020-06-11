module FullAdder(a, b, carry_in, sum, carry);
    // Inputs
    input[31:0]a;   // 32 bit input a
    input[31:0]b;   // 32 bit input b
    input[31:0]carry_in;   // 32 bit input carry_in
    // Outputs
    output[31:0]sum;  // sum of a+b
    output[31:0]carry;  // carry of a+b
    // declare the regs
    reg[31:0]sum;
    reg[31:0]carry;
    //declare the wires
    wire w1, w2, w3;

    // main logic
    always@(a, b, carry_in)
    begin
        // sum is bitwise XOR of a, b
        sum  = a ^ b;  
        // carry is bitwise AND of a, b
        carry =  a & b;  
    end
endmodule