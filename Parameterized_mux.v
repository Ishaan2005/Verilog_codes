module lpw #(parameter k = 4)(input[k-1:0]select,input[2**k-1:0]in1,output wire out1);
assign  out1 = in1[select];
endmodule

module DUT();
parameter k = 4;
reg[k-1:0]select;
reg[2**k-1:0]in1;
wire out1;
lpw xyz(select,in1,out1);
initial begin
repeat(20)begin
select = $random % (1<<4);
in1 = $random;
end
end 
endmodule