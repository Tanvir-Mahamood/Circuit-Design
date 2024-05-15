`timescale 1ns/1ps
module decoder3to8_tb();
    reg [2:0] A;
    reg E;
    wire [7:0] Y;

    decoder3to8 uut(A, E, Y);
    initial begin
        $dumpfile("decoder3to8.vcd");
        $dumpvars(0, decoder3to8_tb);

        E = 1; A[2] = 0; A[1] = 0; A[0] = 0; #20;
        A[2] = 0; A[1] = 0; A[0] = 1; #20;
        A[2] = 0; A[1] = 1; A[0] = 0; #20;
        A[2] = 0; A[1] = 1; A[0] = 1; #20;
        A[2] = 1; A[1] = 0; A[0] = 0; #20;
        A[2] = 1; A[1] = 0; A[0] = 1; #20;
        A[2] = 1; A[1] = 1; A[0] = 0; #20;
        A[2] = 1; A[1] = 1; A[0] = 1; #20;

        $finish;
    end

    initial begin
        $monitor("A[2]=%b A[1]=%b A[0]=%b  Y=%8b", A[2], A[1], A[0], Y);
    end
    endmodule