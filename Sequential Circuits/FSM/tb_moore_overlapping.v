module tb_moore_nonoverlapping;
reg clk,rst,x;
wire y;
moore_overlapping uut(clk,rst,x,y);
always #5clk=~clk;
initial
begin
$monitor("time=%0t clk=%b rst=%b x=%b y=%b state=%b",
              $time, clk, rst, x, y, uut.state);
clk=0;rst=1;
    #17 rst = 0;
    #3  x = 1;   
    #10 x = 0;   
    #10 x = 1;   
    #10 x = 0;  
    #20 $finish;
end
endmodule
