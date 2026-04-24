module MOD5_counter(input clk,rst,output reg [2:0] q);
always @(posedge clk or rst)
begin 
if(rst)
 q<=3'b000;
else if (q==3'd4)
 q<=3'b000;
else
 q<=q+1;
end 
endmodule




