/*
module p_encoder4to2(input [3:0] Y, output [1:0] A);
    assign A[1] = ~Y[3] & Y[2] + Y[3];
    assign A[0] = ~Y[3] & ~Y[2] & Y[1] + Y[3];
endmodule
*/

/*
module p_encoder4to2(input [3:0] Y, output reg [1:0] A);
    always @(*) begin
        if(Y[3] == 1'b1) A = 2'b11;
        else if(Y[2] == 1'b1) A = 2'b10;
        else if(Y[1] == 1'b1) A = 2'b01;
        else if(Y[0] == 1'b1) A = 2'b00;
        else A = 2'b00;;
    end
endmodule
*/
/*
module p_encoder4to2(input [3:0] Y, output reg [1:0] A);
    always @(*) begin
        case (Y)
            4'b0000: A = 2'b00; // Priority 0

            4'b0001: A = 2'b00; // Priority 1

            4'b0010: A = 2'b01; // Priority 2
            4'b0011: A = 2'b01; // Priority 2

            4'b0100: A = 2'b10; // Priority 3
            4'b0101: A = 2'b10; // Priority 3
            4'b0110: A = 2'b10; // Priority 3
            4'b0111: A = 2'b10; // Priority 3
            default: A = 2'b11; // Default, assign highest priority
        endcase 
    end
endmodule
*/

module p_encoder4to2(input [3:0] Y, output reg [1:0] A);
    always @(*) begin
        casex (Y)
            4'b0000: A = 2'b00; // Priority 0

            4'b0001: A = 2'b00; // Priority 1
            4'b001x: A = 2'b01; // Priority 2
            4'b01xx: A = 2'b10; // Priority 3
            default: A = 2'b11; // Default, assign highest priority
        endcase 
    end
endmodule