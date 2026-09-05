module vlsi(input i0,i1,i2,i3,output out,input s0,s1);
assign out = (~s0&~s1&i0) |(~s0&s1&i1)|(s0&~s1&i2)|(s0&s1&i3); 
endmodule 

module vlsi(input s0,s1,i0,i1,i2,i3,output out);
assign out = s0 ? (s1 ? i0:i1) : (s1 ? i2:i3);
endmodule

module vlsi(input[1:0]select,input i0,i1,i2,i3,output reg out);
	always@(*)begin
	out = i0;
		if(select == 2'b00)begin
			out = i0;
		end
		else if(select == 2'b01)begin
			out = i1;
		end
		else if(select == 2'b10)begin
			out = i2;
		end
		else
			out = i3;
	end
endmodule

module vlsi(input i0,i1,i2,i3,s0,s1,output reg out);
always@(*)begin
	case({s0,s1})
	2'b00: out = i0;
	2'b01: out = i1;
	2'b10: out = i2;
	2'b11: out = i3;
	endcase
end
endmodule





