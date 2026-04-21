module updown_counter(input clk,rst,mode,output reg [3:0] q);
always@ (posedge clk or posedge rst)begin
if(rst)
  q<=4'b0000;
else if (mode)
  q<=q+1;
else 
  q<=q-1;
end 
endmodule

