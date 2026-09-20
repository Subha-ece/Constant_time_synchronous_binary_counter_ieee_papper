module c2(
    input  wire clk,
    input  wire rst,
    input  wire PEN1,
    output wire [4:0] Q,
    output wire PEN2_A,
    output wire PEN2_B
);
backward_counter_5bit BC(clk,rst,PEN1,Q,PEN2_A,PEN2_B);
endmodule