module JK_Latch(input J,K,EN, output reg q);
always @(*)
begin
if(EN==1) begin
  if(J==0 && K==0)
    q=q;
  else if (J==0 && K==1)
    q=0;
  else if (J==1 && K==0)
    q=1;
  else 
    q=~q;
  end
else
q=q;
end
endmodule
    
