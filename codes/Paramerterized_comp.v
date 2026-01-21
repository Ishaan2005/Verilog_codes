module lpw #(parameter k = 4)(input[k-1:0]in,output[k-1:0]out);
assign out = ~in + 1;
endmodule

module DUT;
parameter k = 4;
reg[k-1:0]in;
wire[k-1:0]out;
lpw #(k)xyz(in,out);
initial begin
repeat(20)begin
#5 in = $random%15;
end
end
endmodule