//3x8 decoder 
module vlsi(input[2:0]in,input enable,output reg[7:0]out);
always@(*)begin
	if(enable)begin
		case(in)
			3'b000: out = 8'b00000001;
			3'b001: out = 8'b00000010;
			3'b010: out = 8'b00000100;
			3'b011: out = 8'b00001000;
			3'b100: out = 8'b00010000;
			3'b101: out = 8'b00100000;
			3'b110: out = 8'b01000000;
			3'b111: out = 8'b10000000;
			default: out = 8'b0;
		endcase
	end
	else begin
		out = 8'b0;
	end
end
endmodule 




//2x4 decoder 
module two_four(input[1:0]in,input enable,output reg[3:0]out);
always@(*)begin
out = 4'b0;
	if(enable)begin
		case(in)
			2'b00: out = 4'b0001;
			2'b01: out = 4'b0010;
			2'b10: out = 4'b0100;
			2'b11: out = 4'b1000;
		endcase
	end
end
endmodule


module vlsi(input[2:0]inf,output[7:0]outf);
wire[3:0]out1,out2;
two_four t1(inf[1:0],~inf[2],out1);
two_four t2(inf[1:0],inf[2],out2);
assign outf = {out1,out2};
endmodule



module vlsi(input[2:0]in,input enable,output reg[7:0]out);
always @(*) begin
    if(enable)
        out = 8'b00000001 << in;
    else
        out = 8'b0;
end
endmodule


//parameterized decoder
module vlsi #(parameter k = 4)(input[k-1:0]in,input enable,output reg[(2**k)-1:0]out);
always @(*)begin
	if(enable)
		out = 1'b1 << in;
	else
		out = 0;
end
endmodule
