module d_ff_reset(input clk, input reset, input d, output reg q);
    always @(posedge clk, posedge reset) begin
        if(reset) q <= 1'b0;
        else q <= q;
    end
endmodule