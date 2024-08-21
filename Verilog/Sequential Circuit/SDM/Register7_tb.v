`timescale 1ns/1ps
module Register7_tb();
reg clk, reset;
reg [6:0] d;
wire [6:0] q;

Register7 uut(clk, reset, d, q);

always begin
    clk = ~clk;
    #10;
end

initial begin
    $dumpfile("Register7.vcd");
    $dumpvars(0, Register7_tb);

    clk <= 0; reset <= 1; d <= 7'b 0101010; #20;
    reset <= 0; #20;

    $finish;
end

initial begin
    $monitor("clk=%b reset=%b d=%b q=%b", clk, reset, d, q);
end
endmodule