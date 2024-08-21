`timescale 1ns/1ps
module multiplexer_tb();
    reg [3:0] I;
    reg [1:0] S;
    wire Y;

    multiplexer uut(I, S, Y);

    initial begin
        $dumpfile("multiplexer.vcd");
        $dumpvars(0, multiplexer_tb);

        I = 4'b1001;
        S=2'b00; #20;
        S=2'b01; #20;
        S=2'b10; #20;
        S=2'b11; #20;
        $finish;
    end

    initial begin
        $monitor("I=%b S=%b Y=%b", I, S, Y);
    end

endmodule