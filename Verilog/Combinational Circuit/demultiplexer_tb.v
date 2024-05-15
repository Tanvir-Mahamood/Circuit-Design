`timescale 1ns/1ps
module demultiplexer_tb();
    reg I;
    reg [1:0] S;
    reg E;
    wire [3:0] Y;

    demultiplexer uut(I, S, E, Y);
    initial begin
        $dumpfile("demultiplexer.vcd");
        $dumpvars(0, demultiplexer_tb);

        I = 1;
        E = 0; S[1] = 1; S[0] = 1; #20;
        E = 1;
        S[1] = 0; S[0] = 0; #20;
        S[1] = 0; S[0] = 1; #20;
        S[1] = 1; S[0] = 0; #20;
        S[1] = 1; S[0] = 1; #20;

        $finish;
    end

    initial begin
        $monitor("E=%b S=%b Y[3]=%b Y[2]=%b Y[1]=%b Y[0]=%b", E, S, Y[3], Y[2], Y[1], Y[0]);
    end

endmodule