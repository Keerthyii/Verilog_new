module JK_FF(input J,K,clk,output reg q);
always @(posedge clk) begin
  if(J==0 && K==0)
    q<=q;
  else if(J==0 && K==1)
    q<=0;
  else if(J==1 && K==0)
    q<=1;
  else 
    q<=~q;
end 
endmodule

