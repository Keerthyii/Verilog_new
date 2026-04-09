module SR_FF(input S,R,clk,output reg q);
always @(posedge clk) begin
  if(S==0 && R==0)
    q<=q;
  else if(S==0 && R==1)
    q<=0;
  else if(S==1 && R==0)
    q<=1;
  else 
    q<=1'bx;
end 
endmodule
