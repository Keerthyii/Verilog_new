module full_adder_gate(input a,b,cin,output sum,carry);
wire x,y,z;
xor(sum,a,b,cin);
and(x,a,b);
and(y,b,cin);
and(z,cin,a);
or(carry,x,y,z);
endmodule
