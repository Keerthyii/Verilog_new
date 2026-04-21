module tb_negedge_upcounter;
reg clk,rst;
wire [3:0]q;
negedge_upcounter uut(clk,rst,q);
initial
begin
clk=0;
forever #5 clk=~clk;
end
initial 
begin
$monitor("clk%b rst%b q%b",clk,rst,q);
 rst=1;
 #10;
 rst=0;
 #100;
 rst=1;
 #10;
 rst=0;
 #50;
 $finish;
end
endmodule 




