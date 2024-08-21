module Register7(input clk, input reset, input [6:0] d, output [6:0] q);
    reg [6:0] q_reg;
    wire [6:0] q_next; // u may use reg too

    // state register
    always @(posedge clk, posedge reset) begin
        if(reset) q_reg <= 7'b0000000;
        else q_reg <= q_next;
    end

    // next state logic
    assign q_next = d;

    // output logic
    assign q = q_reg;
endmodule