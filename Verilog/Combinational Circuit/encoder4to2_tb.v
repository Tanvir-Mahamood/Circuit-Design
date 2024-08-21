`timescale 1ns/1ps
module encoder4to2_tb();
    reg [3:0] Y;
    wire [1:0] A;

    encoder4to2 uut(Y, A);
    
    initial begin
        $dumpfile("encoder4to2.vcd");
        $dumpvars(0, encoder4to2_tb);

        Y = 4'b0001; #20;
        Y = 4'b0010; #20;
        Y = 4'b0100; #20;
        Y = 4'b1000; #20;
        $finish;
    end

    initial begin
        $monitor("Y=%b A=%b", Y, A);
    end

endmodule