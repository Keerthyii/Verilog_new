module MOD10_counter(input clk,rst,output reg[3:0] q);
always @(posedge clk or posedge rst)
begin
if(rst)
q<=3'b000;
else if(q==4'd9)
q<=3'b000;
else
q<=q+1;
end
endmodule

