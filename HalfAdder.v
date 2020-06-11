// behavioral modeling
module HalfAdder(a,b,sum,carry);

    // Inputs
    input[31:0]a;   // 32 bit input a
    input[31:0]b;   // 32 bit input b

    // Outputs
    output[31:0]sum;  // sum of a+b
    output[31:0]carry;  // carry of a+b

    reg[31:0]sum;
    reg[31:0]carry;
    
    always@(a, b)
    begin
        sum  = a ^ b;  // sum is bitwise XOR
        carry =  a & b;  // carry is bitwise AND
    end
endmodule