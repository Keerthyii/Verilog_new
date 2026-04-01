module tb_mux2to1;
reg a,b,sel;
wire y;
mux2to1 uut(a,b,sel,y);
initial
begin
    a=0; b=0; sel=0; #10;
    a=0; b=0; sel=1; #10;
    a=0; b=1; sel=0; #10;
    a=0; b=1; sel=1; #10;
    a=1; b=0; sel=0; #10;
    a=1; b=0; sel=1; #10;
    a=1; b=1; sel=0; #10;
    a=1; b=1; sel=1; #10;
end
initial
begin
$monitor("a=%b b=%b sel=%b | Y=%b", a, b, sel, y);
end 
endmodule
