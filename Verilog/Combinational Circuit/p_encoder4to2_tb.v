`timescale 1ns/1ps
module p_encoder4to2_tb();
    reg [3:0] Y;
    wire [1:0] A;

    p_encoder4to2 uut(Y, A);
    initial begin
        $dumpfile("p_encoder4to2.vcd");
        $dumpvars(0, p_encoder4to2_tb);

        Y = 4'b0001; #20;
        Y = 4'b0011; #20;
        Y = 4'b0111; #20;
        Y = 4'b1111; #20;

        $finish;
    end

    initial begin
        $monitor("Y=%b A=%b", Y, A);
    end
endmodule