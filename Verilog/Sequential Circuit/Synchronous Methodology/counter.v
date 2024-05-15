module counter(input wire clk, input wire reset, output wire [6:0] q);
    wire [6:0] d_temp;
    reg [6:0] q_temp;
    
    // state register
    always @(posedge clk, posedge reset) begin
        if(reset) q_temp <= 7'b0000_000;
        else q_temp <= d_temp;
    end

    // next state logic
    assign d_temp = q_temp + 1;

    // output logic
    assign q = q_temp;
endmodule