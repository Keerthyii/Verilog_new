module tb_expression;
reg a,b,c;
wire y;
exp uut(a,b,c,y);
initial 
begin
a=0;b=0;c=0;
a=0;b=0;c=1;
a=0;b=1;c=0;
a=0;b=1;c=1;
a=1;b=0;c=0;
a=1;b=0;c=1;
a=1;b=1;c=0;
a=1;b=1;c=1;
end 
endmodule 

