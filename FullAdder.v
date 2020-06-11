`include "HalfAdder.v"
`include "XOR.v"

module FullAdder(a, b, carry_in, sum, carry);
    // Inputs
    input[31:0]a;
    input[31:0]b;
    input[31:0]carry_in;
    
    // Outputs
    output reg[31:0]sum;
    output reg[31:0]carry;
    
    // Wires
    wire [31:0]sum1;
    wire [31:0]carry1;
    wire [31:0]carry2;
    wire [31:0]final_sum;
    wire [31:0]final_carry;
    
    // Logic
    HalfAdder ha1(a, b, sum1, carry1);
    HalfAdder ha2(sum1, carry_in, final_sum, carry2);
    XOR xor0(carry1, carry2, final_carry);
    
    // Connect wires back to registers
    always@(a, b, carry_in,final_carry,final_sum)
    assign carry = final_carry;
    always@(a, b, carry_in,final_carry,final_sum)
    assign sum = final_sum;
endmodule