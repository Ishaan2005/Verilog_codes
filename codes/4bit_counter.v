//up counter , 4bit
module vlsi(input clk,rst,output reg[3:0]out);
always@(posedge clk or negedge rst)begin  
	if(~rst)
		out <= 4'b0;
	else
		out <= out + 4'b0001;
end
endmodule


module vlsi(input clk,rst,output reg[3:0]out);
always@(posedge clk or negedge rst)begin
	if(~rst)
		out <= 4'b1111;
	else
		out <= out - 4'b0001;
end
endmodule 


//updown counter
module vlsi(input clk,rst,updown,output reg[3:0]out);
always@(posedge clk or negedge rst)begin
	if(~rst)
		out <= 4'b0;
	else begin		
		if(updown)
			out <= out + 4'b0001;
		else
			out <= out - 4'b0001;
	end
end
endmodule 
