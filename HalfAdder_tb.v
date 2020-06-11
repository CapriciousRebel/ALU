// behavioral modeling
module HalfAdder_tb;
    reg[31:0] a;   // first number
    reg[31:0] b;   // second number
    wire [31:0]sum;  // sum of a+b
    wire [31:0]carry;  // carry of a+b

HalfAdder ha1(a,b,sum,carry);



    initial begin
        if (! $value$plusargs("a=%d", a)) begin
            $display("ERROR: please specify +a=<value> to start.");
            $finish;
        end   
        if (! $value$plusargs("b=%d", b)) begin
            $display("ERROR: please specify +b=<value> to start.");
            $finish;
        end   
        $display ("a: %d ",a);
        $display ("b: %d",b);
        wait (sum) $display ("sum: %d", sum);
        wait (carry) $display ("carry: %d", carry);
        $finish;
    end

endmodule