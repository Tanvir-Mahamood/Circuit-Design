`timescale 1ns/1ps
module comb1_tb();
    reg D, X, A;
    wire L;

    comb1 uut(D, X, A, L);

    initial begin
        $dumpfile("comb1.vcd");
        $dumpvars(0, comb1_tb);

        D = 0; X = 0; A = 0; #20;
        D = 0; X = 0; A = 1; #20;
        D = 0; X = 1; A = 0; #20;
        D = 0; X = 1; A = 1; #20;
        D = 1; X = 0; A = 0; #20;
        D = 1; X = 0; A = 1; #20;
        D = 1; X = 1; A = 0; #20;
        D = 1; X = 1; A = 1; #20;

        $finish;
    end

    initial begin
        $monitor("D=%b X=%b A=%b L=%b", D, X, A, L);
    end

endmodule