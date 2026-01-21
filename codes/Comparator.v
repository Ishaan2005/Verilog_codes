//4 bit comparator with test bench
module lpw(input[3:0]A, input[3:0]B,output A_less_B,A_greater_B,A_equal_B);
assign A_equal_B = A == B; 
assign A_greater_B = A > B;
assign A_less_B = A < B;
endmodule

module DUT;
reg[3:0]A;
reg[3:0]B;
wire A_less_B,A_greater_B,A_equal_B; 
lpw xyz(A,B,A_less_B,A_greater_B,A_equal_B);
initial begin
repeat(20)begin
#5 A = $random%15;
#5 B = $random%15;
end
end
endmodule