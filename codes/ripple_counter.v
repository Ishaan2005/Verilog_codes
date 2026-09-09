//4 bit ripple carry counter, ripple means async clk, one output is fed as clk to next ff
module dffd(input clk,rst,output reg out);
always@(posedge clk or negedge rst)begin
if(!rst) // as rst is negedge, we do its not to check if condition true/false
out <= 1'b0; //resetting the ff
else
out <= ~out; // conversion of d to t fip flop
end
endmodule

//calling 4 instances to make 4 bit ripple counter
module vlsi(input clk,rst,output[3:0]q);
dffd d1(clk,rst,q[0]);
dffd d2(q[0],rst,q[1]);
dffd d3(q[1],rst,q[2]);
dffd d4(q[2],rst,q[3]);
endmodule
