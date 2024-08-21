`timescale 1ns/1ps
module D_ff_tb();
    reg clk, reset, en, d;
    wire q;

    D_ff uut(clk, reset, en, d, q);

    always begin
        clk = ~clk;
        #10;
    end

    initial begin
        $dumpfile("D_ff.vcd");
        $dumpvars(0, D_ff_tb);

        clk <= 0; reset <= 1; en <= 1; d <= 1; #20;
        reset <= 0; en <= 0; d <= 1; #20;
        en <= 1; d <= 0; #20;
        d <= 1; #20;

        $finish;
    end

    initial begin
        $monitor("clk=%b reset=%b en=%b d=%b q=%b", clk, reset, en, d, q);
    end

endmodule