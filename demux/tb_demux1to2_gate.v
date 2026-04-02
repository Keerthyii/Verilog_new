module tb_demux1to2;

reg I,S;
wire Y0, Y1;     
demux1to2 uut (I,S,Y0,Y1
);

initial begin
    $display("I S | Y0 Y1");
    $monitor("%b %b | %b  %b", I, S, Y0, Y1);
    I = 0; S = 0;   
    #10 I = 1; S = 0;  
    #10 I = 0; S = 1; 
    #10 I = 1; S = 1;

    #10 $finish;
end

endmodule
