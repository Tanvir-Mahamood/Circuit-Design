module d_ff_reset_en(input clk, input reset, input en, input d, output reg q);
always @(posedge clk, posedge reset) begin
    if(reset) q <= 1'b0;
    else if(en) q <= d;
    else q <= q; // u may skip this line.
end
endmodule