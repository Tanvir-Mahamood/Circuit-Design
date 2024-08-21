`timescale 1ns/1ps
module inc_tb();
    reg clk, reset;
    reg [6:0] d;
    wire [6:0] q;

    inc uut(clk, reset, d, q);

    always begin
        clk = ~clk;
        #10;
    end

    initial begin
        $dumpfile("inc.vcd");
        $dumpvars(0, inc_tb);

        clk <= 0; reset <= 0; d <= 7'b0000010; #20;
        #20;
        $finish;
    end

    initial begin
        $monitor("clk=%b d=%b, q=%b", clk, d, q);
    end
endmodule