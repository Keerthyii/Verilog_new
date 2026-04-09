module tb_JK_SR;

reg clk, S, R;
wire q;
JK_SR uut (
    .clk(clk),
    .S(S),
    .R(R),
    .q(q)
);
always #5 clk = ~clk;

initial begin
    // initial values
    clk = 0;
    S = 0;
    R = 0;
    #10 S = 0; R = 0;
    #10 S = 0; R = 1;
    #10 S = 1; R = 0;
    #10 S = 1; R = 1;
    #10 S = 1; R = 1;
    #10 S = 0; R = 0;

    #10 $finish;
end

initial begin
    $monitor("time=%0t clk=%b S=%b R=%b q=%b", $time, clk, S, R, q);
end

endmodule
