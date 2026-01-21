module lpw(input[3:0]in,output[3:0]out);
assign out = in+4'd3;
// for xs3 to bcd we will add 4'd13
endmodule

module DUT();
reg[3:0]in;
wire[3:0]out;
lpw xyz(in,out);
initial begin
repeat(20)begin
#5 in = $random%15;
end
end
endmodule

module lpw(input a,b,c,d,output w,x,y,z,output[3:0]p,output[3:0]q);
assign w = a|b&(c|d);
assign x =(~b&(c|d)) | (b&(~c&~d));
assign y = ~(c ^ d);
assign z = ~d;
assign p = {a,b,c,d};
assign q = {w,x,y,z};
endmodule
//generated using basic gates and a multiplier


module DUT();
reg a,b,c,d;
wire w,x,y,z;
wire[3:0]p;
wire[3:0]q;
lpw xyz(a,b,c,d,w,x,y,z,p,q);
initial begin 
repeat(20)begin
#5 {a,b,c,d} = $random % 10;
end
end
endmodule
