//011 melay overlap
module vlsi(input clk,rst,x,output reg out);
localparam s0 = 2'b0;
localparam s1 = 2'b01;
localparam s2 = 2'b10;
reg[1:0]ps,ns;

always@(posedge clk or negedge rst)begin
	if(~rst)
		ps <= s0;
	else
		ps <= ns;
end 

always@(*)begin
out = 1'b0;
	case(ps)
		
		s0:
			if(x)
				ns = s0;
			else
				ns = s1;
				
		s1:
			if(x)
				ns = s2;
			else
				ns = s1;
		
		s2: 
			if(x)
				ns = s1;
			else begin
				ns = s1;
				out = 1'b1;
			end
			
	endcase
end
endmodule



module vlsi(input clk,rst,x,output reg out);
localparam s0 = 2'b0;  
localparam s1 = 2'b01;
localparam s2 = 2'b10;
localparam s3 = 2'b11;
reg[1:0]ps,ns;

always@(posedge clk or negedge rst)begin
	if(~rst)
		ps <= s0;
	else
		ps <= ns;
end

always@(*)begin
out = 1'b0;
	case(ps)
		
		s0:
			if(x)
				ns = s0;
			else 
				ns = s1;
		
		s1:
			if(x)
				ns = s2;
			else
				ns = s1;
		
		s2:
			if(x)
				ns = s3;
			else
				ns = s1;
		
		s3:begin
		out = 1'b1;
			if(x)
				ns = s0;
			else
				ns = s1;
		end
		
	endcase
end
endmodule
