//TEST BENCH FOR FULL ADDER
module DUT();
reg a,b,cin;
wire sum,cout;
lpw xyz(a,b,cin,sum,cout);
//integer i;
initial begin
#5 a=0;b=0;cin=0;
#5 a=0;b=0;cin=1;
#5 a=0;b=1;cin=0;
#5 a=0;b=1;cin=1;
#5 a=1;b=0;cin=0;
#5 a=1;b=0;cin=1;
#5 a=1;b=1;cin=0;
#5 a=1;b=1;cin=1;
for(i=0;i<10;i=i+1)begin
#5 a=random%2;
#5 b=random%2;
#5 cin=random%2;
end
end
endmodule