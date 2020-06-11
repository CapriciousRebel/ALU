`include "HalfAdder.v"
`include "OR.v"
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
    wire [31:0]sum1;
    wire [31:0]carry1;
    wire [31:0]carry2;
    wire [31:0]final_sum;
    wire [31:0]final_carry;
    // Main logic
    HalfAdder ha1(a, b, sum1, carry1);
    HalfAdder ha2(sum1, carry_in, final_sum, carry2);
    OR or0(carry1, carry2, final_carry);

    // Connect wires back to registers
    always@(a, b, carry_in,final_carry,final_sum)
    assign carry = final_carry;
    always@(a, b, carry_in,final_carry,final_sum)
    assign sum = final_sum;
    
endmodule