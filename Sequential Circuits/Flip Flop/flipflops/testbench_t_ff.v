module testbench_t_ff;
reg clk,rst,t;
wire q;
tb_t_ff uut(clk,rst,t,q);
always #5 clk=~clk;
initial
begin
$monitor("clk:%b rst:%b t:%b q:%b",clk,rst,t,q);	
clk=0;rst=1;t=0;
#10 t=0;
#10 t=1;
#10 t=1;
#10 rst=0;
#20 t=1;
#30 t=0;
#40 t=1;
$finish;
end
endmodule  
