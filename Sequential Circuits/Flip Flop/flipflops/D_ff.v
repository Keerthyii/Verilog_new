module D_ff(input clk,rst,d,output reg q);
always @(posedge clk)
begin
if(rst==1)
  q=0;
else if(d==1)
  q<=d;
end
endmodule 

