`timescale 1ns/1ps
module Counter_tb();
    reg clk, reset;
    wire [6:0] q;

    //Counter circuit(clk, reset, q);
    Counter2 circuit(clk, reset, q);

    always begin
        clk = ~clk;
        #10;
    end

    initial begin
        $dumpfile("CounterU.vcd");
        $dumpvars(0, Counter_tb);

        clk <= 0; reset <= 1; #20;
        reset <= 0;
        #20; #20; #20; #20;
        $finish;
    end

    initial begin
        $monitor("clk=%b reset=%b q=%b", clk, reset, q);
    end

endmodule