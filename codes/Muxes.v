/*
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

//in[sel] means:
//Select exactly one bit from the 16-bit in bus, where sel tells you which bit.
module vlsi(input[15:0]in,output out,input[3:0]sel);
assign out = in[sel];
endmodule

// parameterized mux
*/ 

module muxes #(parameter k = 4)(input[2**k-1:0]in,output out,input[k-1:0]sel);
assign out = in[sel];
endmodule

/*
module Testbench;
reg[15:0]in;
reg[3:0]sel;
wire out;
vlsi v1(.in(in),.sel(sel),.out(out));
initial begin
$dumpfile("vlsi.vcd");
$dumpvars("0,Testbench");
$monitor($time,"in = %b,sel = %b,out = %b",in,sel,out);
#5 in = 16'b1001_0101_1001_0111; sel = 4'b0;
#5 sel = 4'b0100;
#5 sel = 4'b0101;
#5 sel = 4'b0110;
#5 sel = 4'b1111;
#5 $finish
end
endmodule 
*/
