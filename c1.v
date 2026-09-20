module c1(
    input  wire clk,
    input  wire rst,
    input  wire CNT,

    output wire Q0,
    output wire PEN1
);

johnson1bit U_COUNTER (
    .clk(clk),
    .rst(rst),
    .EN(CNT),
    .Q(Q0)
);

johnson1bit U_JOHNSON (
    .clk(clk),
    .rst(rst),
    .EN(CNT),
    .Q(PEN1)
);

endmodule