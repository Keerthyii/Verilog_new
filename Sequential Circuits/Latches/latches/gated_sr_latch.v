module gated_sr_latch(input S,R,EN,output reg q);
always @(S or R or EN)
begin	
if (EN==1)begin
  if(S==0 && R==0)
     q=q;
  else if(S==0 && R==1)
     q=0;
  else if(S==1 && R==0)
     q=1;
  else
     q=1'bx;
  end
else 
q=q;
end
endmodule 

        
