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