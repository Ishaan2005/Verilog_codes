module DUT();
reg[1:0]select;
reg i0,i1,i2,i3;
wire out;
integer i;
lpw xyz(select,i0,i1,i2,i3,out);
initial begin
for(i=0;i<15;i=i+1)begin
#5 i0 = $random%2;
#5 i1 = $random%2;
#5 i2 = $random%2;
#5 i3 = $random%2;
#5 select = $random%4;
end
endmodule