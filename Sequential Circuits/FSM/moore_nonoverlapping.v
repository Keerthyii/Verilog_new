module moore_nonoverlapping(input clk,rst,x,output y);
reg [2:0] state,next;
parameter s0=3'b000,
          s1=3'b001,
          s2=3'b010,
          s3=3'b100,
          s4=3'b101;
always @(posedge clk or posedge rst)
begin
if(rst)
state<=s0;
else
state<=next;
end
always@(*)
begin
case(state)
 s0:next=(x)?s1:s0;
 s1:next=(x)?s1:s2;
 s2:next=(x)?s3:s0;
 s3:next=(x)?s1:s4;
 s4:next= s0;
 default:next=s0;
 endcase
end
assign y=(state==s4);
endmodule
