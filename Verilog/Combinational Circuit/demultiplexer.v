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
        if(E == 1'b0) Y = 4'b0000;
        else if (S == 2'b00) begin
            Y[0] = I;
            Y[1] = 1'b0;
            Y[2] = 1'b0;
            Y[3] = 1'b0;
        end 
        else if (S == 2'b01) begin
            Y[0] = 1'b0;
            Y[1] = I;
            Y[2] = 1'b0;
            Y[3] = 1'b0;
        end 
        else if (S == 2'b10) begin
            Y[0] = 1'b0;
            Y[1] = 1'b0;
            Y[2] = I;
            Y[3] = 1'b0;
        end 
        else if (S == 2'b11) begin
            Y[0] = 1'b0;
            Y[1] = 1'b0;
            Y[2] = 1'b0;
            Y[3] = I;
        end
    end
endmodule
*/


module demultiplexer(input I, input [1:0] S, input E, output reg [3:0] Y);
    always @(*) begin
        case ({E,S})
            3'b100: begin
            Y[0] = I;
            Y[1] = 1'b0;
            Y[2] = 1'b0;
            Y[3] = 1'b0;
        end
        3'b101: begin
            Y[0] = 1'b0;
            Y[1] = I;
            Y[2] = 1'b0;
            Y[3] = 1'b0;
        end
        3'b110: begin
            Y[0] = 1'b0;
            Y[1] = 1'b0;
            Y[2] = I;
            Y[3] = 1'b0;
        end
        3'b111: begin
            Y[0] = 1'b0;
            Y[1] = 1'b0;
            Y[2] = 1'b0;
            Y[3] = I;
        end
        default: begin
            Y[0] = 1'b0;
            Y[1] = 1'b0;
            Y[2] = 1'b0;
            Y[3] = 1'b0;
        end
        endcase
    end
endmodule
