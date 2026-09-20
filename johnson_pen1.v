module johnson1bit(
    input clk,
    input rst,
    input EN,
    output reg Q
);

always @(posedge clk or posedge rst)
begin
    if(rst)
        Q <= 1'b1;
    else
        if(EN)
            Q <= ~Q;
        else
            Q <= Q; 
end

endmodule