module Counter2(input clk, input reset, output [6:0] q);
    wire [6:0] r_next;
    reg [6:0] r_reg;

    // state register
    always @(posedge clk, posedge reset) begin
        if(reset) r_reg <= 7'b0000000;
        else r_reg <= r_next;
    end

    // next state logic
    assign r_next = r_reg + 1;

    // output logic
    assign q = r_reg;
endmodule