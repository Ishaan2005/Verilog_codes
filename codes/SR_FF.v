module vlsi(input s,r,clk,rst,output reg q,output qbar);
always@(posedge clk or posedge rst)begin
	if(rst)begin
	q <= 0;
	end
	else begin
		case({s,r})
			2'b00: q <= q;
			2'b01: q <= 0;
			2'b10: q <= 1;
			2'b11: q <= 1'bx;
			default: q <= q;
		endcase
	end
end
assign qbar = ~q;
endmodule



module vlsi(input s,r,clk,output reg Q,output qbar);
always@(posedge clk)begin
if(s==0 && r==0)begin
Q <= Q;
end
else if(s==0 && r==1)begin
Q <= 0;
end
else if(s==1 && r==0)begin
Q <= 1;
end
else begin
Q <= 1'bx;
end
end
assign qbar = ~Q;
endmodule
		

		
module lpw(input S,R,clk,output reg Q,output qbar);
always@(posedge clk)begin
	if(S == 1 && R ==  1)begin
		Q <= 1'bx;
	end
	else begin
		Q <= S|(~R&Q);
	end
end	
assign qbar = ~Q; 
endmodule


