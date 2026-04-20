module tb_mealy_overlapping;
reg clk,rst,x;
wire y;
mealy_over uut(clk,rst,x,y);
always #5 clk=~clk;
initial begin
$monitor("clk%b rst%b x%b y%b",clk,rst,x,y);
  clk = 0;
    rst = 1;
    #10 rst = 0;
    #10 x = 1;
    #10 x = 0;
    #10 x = 1;
    #10 x = 0;

    #10 x = 1;
    #10 x = 0;
     #50 $finish;
end
endmodule
