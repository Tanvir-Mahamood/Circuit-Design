`timescale 1ns/1ps
module demultiplexer_tb();
    reg I, E;
    reg [1:0] S;
    wire [3:0] Y;

    demultiplexer uut(I, S, E, Y);

    initial begin
        $dumpfile("demultiplexer.vcd");
        $dumpvars(0, demultiplexer_tb);

        I = 1'b1;
        E = 0; S = 2'b11; #20;
        E = 1;
        S = 2'b00; #20;
        S = 2'b01; #20;
        S = 2'b10; #20;
        S = 2'b11; #20;
        $finish;
    end

    initial begin
        $monitor("E=%b S=%b Y=%b", E, S, Y);
    end

endmodule