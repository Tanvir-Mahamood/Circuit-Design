`timescale 1ns/1ps
module d_ff_tb();
    reg clk, d;
    wire q;

    d_ff uut(clk, d, q);

    always begin
        clk = ~clk; 
        #10;
    end

    initial begin
        $dumpfile("d_ff.vcd");
        $dumpvars(0, d_ff_tb);

        clk <= 0; d <= 0; #20;
        d <= 1; #20;

        $finish;
    end

    initial begin
        $monitor("clk=%b d=%b q=%b", clk, d, q);
    end

endmodule