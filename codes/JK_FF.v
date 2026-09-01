module vlsi(input clk,rst,j,k,output reg q, output qbar);
always@(posedge clk or posedge rst)begin
	if(rst)begin
		q <= 1'b0;
	end
	else begin
		case({j,k})
			2'b0: q <= q;
			2'b01: q <= 0;
			2'b10: q <= 1;
			2'b11: q <= ~q;
		endcase
	end
end
assign qbar = ~q;
endmodule



module vlsi(input clk,rst,j,k,output reg q,output qbar);
always@(posedge clk or posedge rst)begin
	if(rst)begin
		q <= 1'b0;
	end
	else if(j == 0 && k == 0)begin
		q <= q;
	end
	else if(j == 0 && k == 1)begin
		q <= 1'b0;
	end
	else if(j == 1 && k == 0)begin
		q <= 1'b1;
	end
	else begin
		q <= ~q;
	end
end
assign qbar = ~q;
endmodule
