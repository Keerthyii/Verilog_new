module tb_moore_nonoverlapping;
reg clk,rst,x;
wire y;
moore_nonoverlapping uut(clk,rst,x,y);
always #5clk=~clk;
initial
begin
$monitor("clk%b rst%b x%b y%b",clk,rst,x,y);
clk=0;rst=1;
#10;rst=0;
#10 x=1;
#10 x=0;
#10 x=1;
#10 x=0; 
#30 $finish;
end
endmodule

