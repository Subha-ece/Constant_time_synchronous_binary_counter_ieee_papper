module conventional_counter_10bit(input clk,input rst,input PEN2_A,input PEN2_B,
output wire [9:0] Q);
wire T0,T1,T2,T3,T4,T5,T6,T7,T8,T9;
assign T0 = 1'b1;
assign T1 = Q[0];
assign T2 = Q[1] & Q[0];
assign T3 = Q[2] & Q[1] & Q[0];
assign T4 = Q[3] & Q[2] & Q[1] & Q[0];
assign T5 = Q[4] & Q[3] & Q[2] & Q[1] & Q[0];
assign T6 = Q[5] & Q[4] & Q[3] & Q[2] & Q[1] & Q[0];
assign T7 = Q[6] & Q[5] & Q[4] & Q[3] & Q[2] & Q[1] & Q[0];
assign T8 = Q[7] & Q[6] & Q[5] & Q[4] &Q[3] & Q[2] & Q[1] & Q[0];
assign T9 = Q[8] & Q[7] & Q[6] & Q[5] &Q[4] & Q[3] & Q[2] & Q[1] & Q[0];
t_ff FF0(.clk(clk),.rst(rst),.en(PEN2_A),.T(T0),.Q(Q[0]));
t_ff FF1(.clk(clk),.rst(rst),.en(PEN2_A),.T(T1),.Q(Q[1]));
t_ff FF2(.clk(clk),.rst(rst),.en(PEN2_A),.T(T2),.Q(Q[2]));
t_ff FF3(.clk(clk),.rst(rst),.en(PEN2_A),.T(T3),.Q(Q[3]));
t_ff FF4(.clk(clk),.rst(rst),.en(PEN2_A),.T(T4),.Q(Q[4]));
t_ff FF5(.clk(clk),.rst(rst),.en(PEN2_B),.T(T5),.Q(Q[5]));
t_ff FF6(.clk(clk),.rst(rst),.en(PEN2_B),.T(T6),.Q(Q[6]));
t_ff FF7(.clk(clk),.rst(rst),.en(PEN2_B),.T(T7),.Q(Q[7]));
t_ff FF8(.clk(clk),.rst(rst),.en(PEN2_B),.T(T8),.Q(Q[8]));
t_ff FF9(.clk(clk),.rst(rst),.en(PEN2_B),.T(T9),.Q(Q[9]));
endmodule