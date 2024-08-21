/*
module p_encoder4to2(input [3:0] Y, output [1:0] A);
    assign A[1] = Y[2] + Y[3];
    assign A[0] = ~Y[2] & Y[1] | Y[3];
endmodule
*/
/*
module p_encoder4to2(input [3:0] Y, output reg [1:0] A);
    always @(*) begin
        if(Y[3] == 1'b1) A = 2'b11;
        else if(Y[2] == 1'b1) A = 2'b10;
        else if(Y[1] == 1'b1) A = 2'b01;
        else A = 2'b00;
    end
endmodule
*/
module p_encoder4to2(input [3:0] Y, output reg [1:0] A);
    always @(*) begin
        casex (Y)
            4'b0000: A = 2'b00;  
            4'b0001: A = 2'b00; 
            4'b001x: A = 2'b01;
            4'b01xx: A = 2'b10;
            4'b1xxx: A = 2'b11;   
            default: A = 2'b11;
        endcase
    end
endmodule