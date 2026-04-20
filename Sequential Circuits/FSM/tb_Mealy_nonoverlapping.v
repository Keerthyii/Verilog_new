module tb_Mealy_nonoverlapping;
reg clk,rst,x;
wire y;
mealy_1010 uut(clk,rst,x,y);
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
#20 $finish;
end
endmodule


