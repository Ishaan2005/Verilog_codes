module vlsi(input clk,rst,t,output reg q,output qbar);
always@(posedge clk or posedge rst)begin
	if(rst)begin
		q <= 1'b0;
	end
	else begin
		case({t})
			1'b0: q <= q;
			1'b1: q <= ~q;
		endcase
	end
end
assign qbar = ~q;  
endmodule 
