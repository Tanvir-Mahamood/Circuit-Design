`timescale 1ns/1ps
module register7_tb();
    reg clk, reset, en;
    reg [6:0] d;
    wire [6:0] q;

    register7 uut(clk, reset, en, d, q);
    always begin
        clk = ~clk;
        #10;
    end

    initial begin
        $dumpfile("register7.vcd");
        $dumpvars(0, register7_tb);

        clk <= 0; reset <= 1; en <= 1; d <= 7'b0000_000; #20;
        reset <= 0; en <= 0; d <= 7'b0000_111; #20;
        reset <= 0; en <= 1; d <= 7'b0000_111; #20;

        $finish;
    end

    initial begin
        $monitor("clk=%b reset=%b en=%b d=%b q=%b", clk, reset, en, d, q);
    end
endmodule