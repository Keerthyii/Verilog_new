module bitevenndetector;
reg a,b;
wire y;
bitevenodd uut(a,b,y);
initial begin
	$monitor("%a,%b,%c values",a,b,y);
	a=0;b=0;
	a=0;b=1;
        a=1;b=0;
        a=1;b=1;
end 
endmodule 
