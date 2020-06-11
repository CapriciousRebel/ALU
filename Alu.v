`include "includer.v"

module ALU(A, B, Operation, Output);
    // Inputs
    input [31:0] A;
    input [31:0] B;
    input [2:0] Operation;
    // Outputs
    output [31:0]Output;
    // Registers
    reg [31:0] Output;
    // Wires
    wire [31:0]w1;

    always@(A, B, Operation)
        case (Operation)
                    3'b000: 
                    Output = !a;      // NOT[WIP] 
                    3'b001: 
                        AND and0(A, B, w1);
                    3'b010: 
                    Output = a | b;   // OR[WIP]
                    3'b011: 
                    Output = a + b;   // addition[WIP]
                    3'b100: 
                    Output = a - b;   // subtraction[WIP]
                    3'b101: 
                    Output = a * b;   // multiplication[WIP] 
                    3'b110: 
                    Output = a / b;   // division[WIP] 
                endcase

    always@(A , B , Operation)
    assign Output = w1;
endmodule