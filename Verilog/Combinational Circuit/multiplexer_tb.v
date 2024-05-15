`timescale 1ns/1ps
module multiplexer_tb();
    reg [3:0] I;
    reg [1:0] S;
    wire Y;

    multiplexer uut(I, S, Y);

    initial begin
        $dumpfile("multiplexer.vcd");
        $dumpvars(0, multiplexer_tb);

        I[0] = 1; I[1] = 0; I[2] = 0; I[3] = 1;

        S[1] = 0; S[0] = 0; #20;
        S[1] = 0; S[0] = 1; #20;
        S[1] = 1; S[0] = 0; #20;
        S[1] = 1; S[0] = 1; #20;

        $finish;
    end

    initial begin
        $monitor("S[1]=%b S[0]=%b Y=%b", S[1], S[0], Y);
    end
endmodule