module NOT(A, Output);
    // Inputs
    input[31:0]A;   // 32 bit input A

    // Outputs
    output[31:0]Output;  // logical NOT of A

    // Registers
    reg[31:0]Output;
    
    // Main
    always@(A)
    begin
        // Output is logical NOT of A
        Output = !A;
    end
endmodule