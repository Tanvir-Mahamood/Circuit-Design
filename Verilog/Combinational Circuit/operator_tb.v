`timescale 1ns/1ps
module operator_tb();
    reg [3:0] A;
    reg [3:0] B;
    reg [3:0] C;
    reg [3:0] D;

    wire [3:0] Arithmetic;
    wire [3:0] Shift;
    wire [3:0] Relational;
    wire [3:0] Equality;
    wire [3:0] Bitwise;
    wire [3:0] Reduction;
    wire [3:0] Logical;
    wire [3:0] Concatenation;
    wire [3:0] Conditional;

    operator uut(A, B, C, D, Arithmetic, Shift, Relational, Equality, Bitwise, Reduction, Logical, Concatenation, Conditional);

    initial begin
        $dumpfile("operator.vcd");
        $dumpvars(0, operator_tb);

        A = 4'b1100;
        B = 4'b0110;
        C = 4'b0011;
        D = 4'b1100;
        #20;
        $finish;
    end

    initial begin
        $monitor("A=%b B=%b C=%b D=%b\n", A, B, C, D,
        "Arithmetic=%b Shift=%b Relational=%b Equality=%b\n",Arithmetic, Shift, Relational, Equality, 
        "Bitwise=%b Reduction=%b Logical=%b Concatenation=%b Conditional=%b", Bitwise, Reduction, Logical, Concatenation, Conditional);
    end

endmodule
