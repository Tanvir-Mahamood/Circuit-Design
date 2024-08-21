/*
module demultiplexer(input I, input [1:0] S, input E, output [3:0] Y);
    assign Y[3] = E & S[1] & S[0] & I;
    assign Y[2] = E & S[1] & ~S[0] & I;
    assign Y[1] = E & ~S[1] & S[0] & I;
    assign Y[0] = E & ~S[1] & ~S[0] & I;
endmodule
*/
/*
module demultiplexer(input I, input [1:0] S, input E, output reg [3:0] Y);
    always @(*) begin
        Y = 4'b0000;
        if(E == 1'b0) Y = 4'b0000;
        else if(S == 2'b00) Y[0] = I;
        else if(S == 2'b01) Y[1] = I;
        else if(S == 2'b10) Y[2] = I;
        else  Y[3] = I;
    end
endmodule
*/
module demultiplexer(input I, input [1:0] S, input E, output reg [3:0] Y);
    always @(*) begin
        Y = 4'b0000;
        case ({E, S})
            3'b100: Y[0] = I;
            3'b101: Y[1] = I;
            3'b110: Y[2] = I;
            3'b111: Y[3] = I;
        endcase
    end
endmodule