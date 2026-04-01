module tb_mux8to1;
reg a,b,c,d,e,f,g,h,s0,s1,s2;
wire y;
mux8to1 uut(a,b,c,d,e,f,g,h,s0,s1,s2,y);
initial
begin
 a=0; b=1; c=0; d=1; e=0; f=1; g=0; h=1;

    s2=0; s1=0; s0=0; #10;
    s2=0; s1=0; s0=1; #10;
    s2=0; s1=1; s0=0; #10;
    s2=0; s1=1; s0=1; #10;
    s2=1; s1=0; s0=0; #10;
    s2=1; s1=0; s0=1; #10;
    s2=1; s1=1; s0=0; #10;
    s2=1; s1=1; s0=1; #10;
end
initial
begin
$monitor("a=%b b=%b c=%b d=%b e=%b f=%b g=%b h=%b | s2=%b s1=%b s0=%b | y=%b",
              a,b,c,d,e,f,g,h, s2,s1,s0, y);
end 
endmodule
