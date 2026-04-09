module tb_JK_T; 
reg clk, rst,T;
wire q, qbar;
JK_T uut(
    .clk(clk),
    .rst(rst),
    .T(T),
    .q(q),
    .qbar(qbar)
);

always #5 clk = ~clk;

initial begin
    clk = 0;
    rst = 1;
    T=0;

    $monitor("time=%0t clk=%b rst=%b T=%b q=%b qbar=%b",
             $time, clk, rst,T,q,qbar);

    #10 rst = 0;
    #10 T=0;
    #10 T=1;
    #10 T=0;
    #10 T=1;
    #5 $finish;
end

endmodule

