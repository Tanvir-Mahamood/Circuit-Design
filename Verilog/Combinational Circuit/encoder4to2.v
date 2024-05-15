/*
module encoder4to2(input [3:0] Y, output [1:0] A);
    assign A[1] = Y[3] + Y[2];
    assign A[0] = Y[3] + Y[1];
endmodule
*/

/*
module encoder4to2(input [3:0] Y, output reg [1:0] A);
    always @(*) begin
        if(Y == 4'b0001) A = 2'b00;
        else if(Y == 4'b0010) A = 2'b01;
        else if(Y == 4'b0100) A = 2'b10;
        else A = 2'b11;
    end
endmodule
*/

module encoder4to2(input [3:0] Y, output reg [1:0] A);
    always @(*) begin
        case (Y)
            4'b0001: A = 2'b00; 
            4'b0010: A = 2'b01;
            4'b0100: A = 2'b10;
            default: A = 2'b11;
        endcase 
    end
endmodule