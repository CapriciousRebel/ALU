module ALU(A, B, Operation, Output);
    // Inputs
    input [31:0] A; // 32 bit input A
    input [31:0] B; // 32 bit input B
    input [2:0] Operation; // 3 bit input operation (for 7 operations)
      
    // Outputs
    output [31:0]Output;
      
    // declare the regs
    reg [31:0] Output;
      
    // main logic
    always@(a , b , operation)
    begin
        case (operation)
            3'b000: Output = !a;      // NOT[WIP] 
            3'b001: Output = a & b;   // AND[WIP]
            3'b010: Output = a | b;   // OR[WIP]
            3'b011: Output = a + b;   // addition[WIP]
            3'b100: Output = a - b;   // subtraction[WIP]
            3'b101: Output = a * b;   // multiplication[WIP] 
            3'b110: Output = a / b;   // division[WIP] 
        endcase
    end

endmodule