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

module DUT();
reg[2:0]A;
reg[2:0]B;
wire[3:0]sum;
wire cout;
reg cin;
lpw xyz(A,B,sum,cout,cin);
initial begin
repeat(20)begin
#5 A = $random%7;
#5 B = $random%7;
#5 cin = $random%2;
end
end
endmodule
