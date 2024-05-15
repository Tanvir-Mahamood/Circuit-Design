
module counter(input clk, input reset, output [6:0] q);
    wire [6:0] d_temp;
    wire [6:0] q_temp;
    
    register cir1(clk, reset, d_temp, q_temp);
    adder cir2(q_temp, d_temp);
    assign q = q_temp;
endmodule
