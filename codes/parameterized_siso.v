module dffd(input clk,rst,in,output reg out);
always@(posedge clk or negedge rst)begin
// negedge rst means active low, or during the negative edge of the clk,
//if(rst) is used, will fetch error because rst will never be positive, hence have to use !rst or specify 
//egedge rst means your reset is intended to be active-low. So when reset occurs: rst = 0
//but if (rst) checks if rst = 1;
	if(!rst)
		out <= 1'b0;
	else
		out <= in;
	end
endmodule 

module vlsi #(parameter k = 15)(input clk,rst,in,output out);
genvar i;
assign out = q[k-1];
wire[k-1:0]q;
dffd d1(clk,rst,in,q[0]);
	generate 
		for(i = 1;i < k;i = i+1)begin:for_loop
			dffd d2(clk,rst,q[i-1],q[i]);
		end
	endgenerate
endmodule
