`timescale 1ns/1ps
module decoder3to8_tb();
    reg [2:0] A;
    reg E;
    wire [7:0] Y;

    decoder3to8 uut(A, E, Y);
    initial begin
        $dumpfile("decoder3to8.vcd");
        $dumpvars(0, decoder3to8_tb);

        E = 1;
        A = 3'b000; #20;
        A = 3'b001; #20;
        A = 3'b010; #20;
        A = 3'b011; #20;
        A = 3'b100; #20;
        A = 3'b101; #20;
        A = 3'b110; #20;
        A = 3'b111; #20;
        $finish;
    end

    initial begin
        $monitor("A=%b Y=%b", A, Y);
    end
    endmodule