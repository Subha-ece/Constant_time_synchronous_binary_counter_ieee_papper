module t_ff(
    input clk,
    input rst,
    input en,
    input T,
    output reg Q
);

always @(posedge clk or posedge rst)
begin
    if(rst)
        Q <= 0;
    else if(en)
    begin
        if(T)
            Q <= ~Q;
    end
end

endmodule          
    
