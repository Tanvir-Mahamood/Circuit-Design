module inc2(input clk, input reset, input [6:0] d, output [6:0] q);
    reg [6:0] r_next;
    reg [6:0] r_reg;

    // state register
    always @(posedge clk, posedge reset) begin
        if(reset) r_reg <= 7'b0000000;
        else r_reg <= r_next;
    end

    // next state logic
    always @(*) begin
        if(d % 2 == 0) r_next = d + 1;
        else r_next = d;
    end

    // output logic
    assign q = r_reg;
endmodule