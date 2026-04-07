module T_Latch(input t,EN,rst,output reg q);
always @(*)
begin
if(rst)
	q=0;
else if(EN==1) begin
 if(t==0)
  q=q;
 else 
  q=~q;
end
else
q=q;
end
endmodule

  

