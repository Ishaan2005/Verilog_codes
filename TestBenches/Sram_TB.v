module DUT;
reg rdwrt,in,select;
wire out;
lpw zyz(rdwrt,in,select,out);
initial begin
repeat(20)begin
#5 rdwrt = $random%2;
#5 in = $random%2;
#5 select = $random%2;
end
end
endmodule