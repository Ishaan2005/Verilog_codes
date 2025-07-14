//bcd adder
// if sum > 9(1001), add 6(0110) to correct it
module lpw(input[2:0]A,input[2:0]B,output reg[3:0]sum,output reg cout,input cin);
reg[3:0]c_sum;
wire[3:0]xs3_A;
wire[3:0]xs3_B;
wire[4:0]bin_sum;
wire[4:0]c_sum;
assign xs3_A = A + 3'd3;
assign xs3_B = B + 3'd3;
assign bin_sum = xs3_A + xs3_B + cin;
always@(*)begin
if(bin_sum > 12)begin
c_sum = bin_sum + 5'd6;
//if sum(that is binary sum or bin_sum)
//is greater than 9, add 6 to correct it(c_sum)
//and assign it to sum
c_sum = bin_sum + 5'd6;
sum = c_sum[3:0];
cout = 1;
end
else if(bin_sumxs<=12)begin
sum_xs = bin_sumxs[3:0];
end
else if(bin_sumxs>12)begin
c_sumxs = ;
else begin
sum = bin_sum[3:0];
cout = 0;
end
end
endmodule