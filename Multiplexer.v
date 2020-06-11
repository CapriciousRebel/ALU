module Multiplexer2To1(D0, D1, S, Y);
    // Inputs
    input D0, D1, S;
    // Outputs
    output Y;
    // Logic
    assign Y=(S)?D1:D0;
endmodule

module Multiplexer4To1(D0, D1, D2, D3, S0, S1, Y);
	// Inputs
    input D0, D1, D2, D3, S0, S1;
    // Wires
    wire W1, W2;
    // Outputs
	output Y;
	// Logic
	Multiplexer2To1 M0(D0, D1, S0, W1);
	Multiplexer2To1 M1(D2, D3, S0, W2);
	Multiplexer2To1 M2(W1, W2, S1, Y);
endmodule

module Multiplexer8To1(D0, D1, D2, D3, D4, D5, D6, D7, S0, S1, S2, Y);
	// Inputs
    input D0, D1, D2, D3, D4, D5, D6, D7, S0, S1, S2;
    // Wires
    wire W1, W2;
    // Outputs
	output Y;
	// Logic
	Multiplexer4To1 M0(D0, D1, D2, D3, S0, S1, W1);
	Multiplexer4To1 M1(D4, D5, D6, D7, S0, S1, W2);
	Multiplexer4To1 M2(W1, W2, S2, Y);
endmodule
