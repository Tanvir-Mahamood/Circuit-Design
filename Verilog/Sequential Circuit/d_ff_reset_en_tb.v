`timescale 1ns/1ps
module d_ff_reset_en_tb();
    reg clk, reset, en, d;
    wire q;

    d_ff_reset_en uut(clk, reset, en, d, q);

    always begin
        clk = ~clk;
        #10;
    end

    initial begin
        $dumpfile("d_ff_reset_en.vcd");
        $dumpvars(0, d_ff_reset_en_tb);

        clk <= 0; reset <= 1; en <= 0; d <= 0; #20;
        reset <= 0; d <= 1; #20;
        en <= 1; #20;

        $finish;
    end

    initial begin
        $monitor("clk=%b reset=%b en=%b d=%b q=%b", clk, reset, en, d, q);
    end

endmodule