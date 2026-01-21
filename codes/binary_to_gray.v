//binary to gray
module lpw(input[3:0]in,output[3:0]out);
assign out[3]=in[3];
assign out[2]=in[3]^in[2];
assign out[1]=in[2]^in[1];
assign out[0]=in[1]^in[0];
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