module comb1(input D, input X, input A, output L);
    assign L = A | (D & (~X));
endmodule