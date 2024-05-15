`timescale 1ns/1ps
module register16_tb();
    reg clk, reset;
    reg [15:0] d;
    wire [15:0] q;

    register16 uut(clk, reset, d, q);

    always begin
        clk = ~clk;
        #10;
    end

    initial begin
        $dumpfile("register16.vcd");
        $dumpvars(0, register16_tb);

        clk <= 0; reset <= 1; d <= 16'b0000000000000000; #20;
        reset <= 0; d <= 16'b0000000011110000; #20;

        $finish;
    end

    initial begin
        $monitor("clk=%b reset=%b d=%b q=%b", clk, reset, d, q);
    end

endmodule