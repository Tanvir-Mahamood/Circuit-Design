`timescale 1ns/1ps
module encoder4to2_tb();
    reg [3:0] Y;
    wire [1:0] A;
encoder4to2 uut(Y, A);
initial begin
    $dumpfile("encoder4to2.vcd");
    $dumpvars(0, encoder4to2_tb);

    Y[3] = 0; Y[2] = 0; Y[1] = 0; Y[0] = 1; #20;
    Y[3] = 0; Y[2] = 0; Y[1] = 1; Y[0] = 0; #20;
    Y[3] = 0; Y[2] = 1; Y[1] = 0; Y[0] = 0; #20;
    Y[3] = 1; Y[2] = 0; Y[1] = 0; Y[0] = 0; #20;

    $finish;
end
initial begin
    $monitor("Y[3]=%b Y[2]=%b Y[1]=%b Y[0]=%b", Y[3], Y[2], Y[1], Y[0],
    " A[1]=%b A[0]=%b", A[1], A[0]);
end
endmodule