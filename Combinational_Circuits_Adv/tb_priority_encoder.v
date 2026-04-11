module tb_priority_encoder;

reg d3, d2, d1, d0;
wire y1, y0;
priority_encoder uut (
    .d3(d3),
    .d2(d2),
    .d1(d1),
    .d0(d0),
    .y1(y1),
    .y0(y0)
);

initial begin
    $monitor("d3=%b d2=%b d1=%b d0=%b --> y1=%b y0=%b", d3, d2, d1, d0, y1, y0);

    d3=0; d2=0; d1=0; d0=0; #10;   
    d3=0; d2=0; d1=0; d0=1; #10;  
    d3=0; d2=0; d1=1; d0=0; #10;   
    d3=0; d2=1; d1=0; d0=0; #10;   
    d3=1; d2=0; d1=0; d0=0; #10; 

    d3=0; d2=0; d1=1; d0=1; #10;  
    d3=0; d2=1; d1=1; d0=0; #10;   
    d3=1; d2=1; d1=0; d0=0; #10;  
    d3=1; d2=1; d1=1; d0=1; #10;  

    $finish;
end

endmodule
