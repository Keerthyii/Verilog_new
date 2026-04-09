module tb_t_ff(input clk,rst,t,output reg q);
always @(posedge clk)begin
if(rst)
  q<=0;
else if(t==1)
  q<=~q;
end
endmodule
