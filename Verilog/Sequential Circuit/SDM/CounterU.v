module register7(input clk, input reset, input [6:0] d, output reg [6:0] q);
    always @(posedge clk, posedge reset) begin
        if(reset) q <= 7'b0000000;
        else q <= d;
    end
endmodule

module adder(input [6:0] I, output [6:0] O);
    assign O = I + 1;
endmodule

module Counter(input clk, input reset, output [6:0] q);
    wire [6:0] r_next, r_reg; // must use wire for both
    
    register7 uut1(clk, reset, r_next, r_reg); // state register
    adder uut2(r_reg, r_next); // next state logic
    assign q = r_reg; // output logic
endmodule