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