/*
module decoder3to8(input [2:0] A, input E, output [7:0] Y);
    assign Y[7] = E & A[2] & A[1] & A[0];
    assign Y[6] = E & A[2] & A[1] & ~A[0];
    assign Y[5] = E & A[2] & ~A[1] & A[0];
    assign Y[4] = E & A[2] & ~A[1] & ~A[0];
    assign Y[3] = E & ~A[2] & A[1] & A[0];
    assign Y[2] = E & ~A[2] & A[1] & ~A[0];
    assign Y[1] = E & ~A[2] & ~A[1] & A[0];
    assign Y[0] = E & ~A[2] & ~A[1] & ~A[0];
    
endmodule
*/

/*
module decoder3to8(input [2:0] A, input E, output reg [7:0] Y);
    always @(*) begin
        if(E == 1'b0) Y = 8'b00000000;
        else if(A == 3'b000) Y = 8'b00000001;
        else if(A == 3'b001) Y = 8'b00000010;
        else if(A == 3'b010) Y = 8'b00000100;
        else if(A == 3'b011) Y = 8'b00001000;
        else if(A == 3'b100) Y = 8'b00010000;
        else if(A == 3'b101) Y = 8'b00100000;
        else if(A == 3'b110) Y = 8'b01000000;
        else Y = 8'b10000000;
    end
endmodule
*/

module decoder3to8(input [2:0] A, input E, output reg [7:0] Y);
    always @(*) begin
        case ({E, A})
            4'b1000: Y = 8'b00000001;
            4'b1001: Y = 8'b00000010;
            4'b1010: Y = 8'b00000100;
            4'b1011: Y = 8'b00001000;
            4'b1100: Y = 8'b00010000;
            4'b1101: Y = 8'b00100000;
            4'b1110: Y = 8'b01000000;
            4'b1111: Y = 8'b10000000;
            default: Y = 8'b00000000;
        endcase
    end
endmodule

