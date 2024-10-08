module register7(input clk, input reset, input [6:0] d, output reg [6:0] q);
    always @(posedge clk, posedge reset) begin
        if(reset) q <= 7'b0000000;
        else q <= d;
    end
endmodule