module tb_top16;

reg clk;
reg rst;

wire [15:0] count;

top16 DUT(

    .clk(clk),
    .rst(rst),

    .count(count)

);


//--------------------------------
// Clock Generation
//--------------------------------

always #5 clk = ~clk;


//--------------------------------
// Test Sequence
//--------------------------------

initial
begin

    clk = 0;
    rst = 1;

    #20;

    rst = 0;

    #5000;

end


//--------------------------------
// Monitor
//--------------------------------

initial
begin

$monitor("Time=%0t  Count=%b",
          $time,
          count);

end

endmodule
