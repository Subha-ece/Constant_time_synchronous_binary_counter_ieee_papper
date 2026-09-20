module top16(
    input  wire clk,
    input  wire rst,
    output wire [15:0] count);
wire Q0;
wire PEN1;
wire PEN2_A;
wire PEN2_B;
wire [4:0] C2_Q;
wire [9:0] C3_Q;
c1 U_C1(.clk(clk),.rst(rst),.CNT(1'b1),.Q0(Q0),.PEN1(PEN1));
c2 U_C2(   .clk(clk),.rst(rst),.PEN1(PEN1),.Q(C2_Q),.PEN2_A(PEN2_A),.PEN2_B(PEN2_B));
c3 U_C3(.clk(clk),.rst(rst),.PEN2_A(PEN2_A),.PEN2_B(PEN2_B),.Q(C3_Q));
assign count[0]    = Q0;
assign count[5:1]  = C2_Q;
assign count[15:6] = C3_Q;
endmodule