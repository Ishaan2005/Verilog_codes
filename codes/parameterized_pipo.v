module vlsi(input clk,rst,input[3:0]in,output reg[3:0]out);
always@(posedge clk or negedge rst)begin
if(!rst)
out <= 4'b0;
else
out <= in; 
end
endmodule 


module vlsi #(parameter k = 8)(input clk,rst,input[k-1:0]in,output reg[k-1:0]out);
always@ (posedge clk or negedge rst)begin
if(!rst)
out <= 0;
else 
out <= in;
end
endmodule
