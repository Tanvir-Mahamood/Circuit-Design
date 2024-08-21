module D_ff(input clk, input reset, input en, input d, output q);
    reg r_next, r_reg;

    // state register
    always @(posedge clk, posedge reset) begin
        if(reset) r_reg <= 1'b0;
        else r_reg <= r_next;
    end

    // next state logic
    always @(*) begin
        if(en) r_next = d;
        else r_next = r_reg;
    end

    // output logic
    assign q = r_reg;
    
endmodule