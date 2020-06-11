`include "includer.v"

module ALU(A, B, OpCode, CarryIn, Output, CarryOut);
    // Inputs
    input [31:0] A;
    input [31:0] B;
    input [2:0] OpCode;
    input [31:0] CarryIn;
    // Outputs
    output [31:0]Output;
    output [31:0]CarryOut;
    // Registers
    reg [31:0] Output;
    reg [31:0] CarryOut;
    // Wires
    wire [31:0] Add, Sub, Mul, Div, And, Or, Not, Redundant, CarryOutWire, OutputWire;
    
    // Operations (Connect modules to respective wires)
    /* Logical */
    AND and0(A, B, And);
    OR or0(A, B, Or);
    NOT not0(A, Not);
    /* Arithmetic */
    ADD add0(A, B, CarryIn, Add, CarryOutWire);
    //SUB sub0(A, B, Sub);
    //MUL mul0(A, B, Mul);
    //DIV div0(A, B, Div);

    // Multiplex the wires with the OpCode
    /* 
    OpCodes:
        000 => ADD
        001 => AND
        010 => MUL
        011 => NOT
        100 => SUB
        101 => OR
        110 => DIV
        111 => XOR
    */
    Multiplexer8To1 Mux(Add, Sub, Mul, Div, And, Or, Not, Redundant, OpCode, OutputWire);
    always @ (Add, Sub, Mul, Div, And, Or, Not)
    assign CarryOut = CarryOutWire;
    always @ (Add, Sub, Mul, Div, And, Or, Not)
    assign Output = OutputWire;
endmodule