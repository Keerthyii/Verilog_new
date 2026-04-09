module tb_SR_D_FF;

reg clk, rst,D;
wire q, qbar;

SR_D uut (
    .clk(clk),
    .rst(rst),
    .D(D),
    .q(q),
    .qbar(qbar)
);

always #5 clk = ~clk;

initial begin
    clk = 0;
    rst = 1;
    D=0;

    $monitor("time=%0t clk=%b rst=%b D=%b q=%b qbar=%b",
             $time, clk, rst,D,q,qbar);

    #10 rst = 0;
    #10 D=0;
    #10 D=1;
    #10 D=0;
    #10 D=1;
    #5 $finish;
end

endmodule
