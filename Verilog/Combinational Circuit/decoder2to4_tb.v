`timescale 1ns/1ps
module decoder2to4_tb();
    reg [1:0] A;
    reg E;
    wire [3:0] Y;

    decoder2to4 uut(A, E, Y);

    initial begin
        $dumpfile("decoder2to4.vcd");
        $dumpvars(0, decoder2to4_tb);

        E = 0; A[1] = 0; A[0] = 0; #20;
        E = 1; A=2'b00; #20;
        A=2'b01; #20;
        A=2'b10; #20;
        A=2'b11; #20;
        $finish;
    end

    initial begin
        $monitor("E=%b A=%2b Y=%4b", E, A, Y);
    end
endmodule