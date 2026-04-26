module tb_ring_counter;

reg clk;
reg rst;
wire [3:0] q;
ring_counter uut (
    .clk(clk),
    .rst(rst),
    .q(q)
);

always #5 clk = ~clk;

initial begin
    clk = 0;
    rst = 1;
    #10;
    rst = 0;
    #80;
    $finish;
end
initial begin
    $monitor("Time=%0t | rst=%b | q=%b", $time, rst, q);
end

endmodule
