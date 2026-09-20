 module backward_counter_5bit (
    input  wire clk,
    input  wire rst,
    input  wire PEN1,
    output wire [4:0] Q,
    output wire PEN2_A,
    output wire PEN2_B);
wire P2, P3, P4;
assign P2 = Q[1];
assign P3 = Q[2] & Q[1];
assign P4 = Q[3] & Q[2] & Q[1];
wire T0, T1, T2, T3, T4;
assign T0 = 1'b1;
assign T1 = Q[0];
assign T2 = P2 & Q[0];
assign T3 = P3 & Q[0];
assign T4 = P4 & Q[0];
t_ff FF0 (.clk(clk), .rst(rst), .en(PEN1), .T(T0), .Q(Q[0]));
t_ff FF1 (.clk(clk), .rst(rst), .en(PEN1), .T(T1), .Q(Q[1]));
t_ff FF2 (.clk(clk), .rst(rst), .en(PEN1), .T(T2), .Q(Q[2]));
t_ff FF3 (.clk(clk), .rst(rst), .en(PEN1), .T(T3), .Q(Q[3]));
t_ff FF4 (.clk(clk), .rst(rst), .en(PEN1), .T(T4), .Q(Q[4]));
johnson1bit pen_2 (clk,rst,T4,PEN2_A);
johnson1bit pen_3 (clk,rst,T4,PEN2_B);
endmodule