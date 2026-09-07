//sipo
module vlsi(input clk,rst,in,output[3:0]out);
//A wire cannot be assigned procedurally using <= or = inside a Verilog always block.
reg[3:0]temp;
always@(posedge clk or negedge rst)begin
if(!rst)
temp <= 4'b0;
else begin
temp <= temp << 1;
temp[0] <= in; 
end
end
assign out = temp;
endmodule 
//rtl will have q as feedback to the d input, because if lets say input = 1011, new shifted will be 011{in}
//hence to remember the 011, feedbac has to be used
