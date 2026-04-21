module negedge_upcounter(input clk,rst,output reg [3:0] q);
always @(negedge clk or posedge rst)begin
if(rst)
 q<=4'b0000;
else 
 q<=q+1;
end
endmodule
 

