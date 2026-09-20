module c3(

    input clk,
    input rst,

    input PEN2_A,
    input PEN2_B,

    output wire [9:0] Q

);

conventional_counter_10bit COUNTER(

    .clk(clk),
    .rst(rst),

    .PEN2_A(PEN2_A),
    .PEN2_B(PEN2_B),

    .Q(Q)

);

endmodule