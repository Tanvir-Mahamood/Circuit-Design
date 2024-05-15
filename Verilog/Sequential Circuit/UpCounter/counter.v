module counter(input wire clk, input wire reset, output wire [6:0] q);
    wire [6:0] d_temp, q_temp;
    register7 register_circuit1(clk, reset, d_temp, q_temp); // state register
    adder ader_circuit1(q_temp, d_temp);                     // next state logic
    assign q = q_temp;                                       // output logic
endmodule