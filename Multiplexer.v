module Multiplexer2To1(D0, D1, S, Y);
    // Inputs
    input [31:0]D0, D1;
    input [0:0]S;
    // Outputs
    output [31:0]Y;
    // Logic Y = (D0 * S' + D1 * S)
    // D1 if S == 1 else D0
    assign Y=(S)?D1:D0;
endmodule

module Multiplexer4To1(D0, D1, D2, D3, S0, S1, Y);
	// Inputs
    input [31:0]D0, D1, D2, D3;
    input [0:0]S0, S1;
    // Wires
    wire [31:0]W1, W2;
    // Outputs
	output [31:0]Y;
	// Logic 
	Multiplexer2To1 M0(D0, D1, S0, W1);
	Multiplexer2To1 M1(D2, D3, S0, W2);
	Multiplexer2To1 M2(W1, W2, S1, Y);
endmodule

module Multiplexer8To1(D0, D1, D2, D3, D4, D5, D6, D7, S, Y);
	// Inputs
    input [31:0]D0, D1, D2, D3, D4, D5, D6, D7;
    input[2:0]S;
    // Wires
    wire [31:0] W1, W2;
    // Outputs
	output [31:0]Y;
	// Logic
	Multiplexer4To1 M0(D0, D1, D2, D3, S[0], S[1], W1);
	Multiplexer4To1 M1(D4, D5, D6, D7, S[0], S[1], W2);
	Multiplexer2To1 M2(W1, W2, S[2], Y);
endmodule
