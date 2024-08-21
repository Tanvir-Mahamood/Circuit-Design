/*
module multiplexer(input [3:0] I, input [1:0] S, output Y);
    assign Y = (~S[1] & ~S[0] & I[0]) | (~S[1] & S[0] & I[1]) | (S[1] & ~S[0] & I[2]) | (S[1] & S[0] & I[3]);
endmodule
*/
/*
module multiplexer(input [3:0] I, input [1:0] S, output reg Y);
    always @(*) begin
        if(S == 2'b00) Y = I[0];
        else if(S == 2'b01) Y = I[1];
        else if(S == 2'b10) Y = I[2];
        else Y = I[3];
    end
endmodule
*/
module multiplexer(input [3:0] I, input [1:0] S, output reg Y);
    always @(*) begin
        case (S)
            2'b00: Y = I[0];
            2'b01: Y = I[1];
            2'b10: Y = I[2];
            default: Y = I[3];
        endcase
    end
endmodule