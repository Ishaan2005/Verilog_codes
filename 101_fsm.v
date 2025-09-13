//101 melay overlap 
module lpw(input clk,rst,in,output reg out);
parameter s0 = 2'b00;
parameter s1 = 2'b01;
parameter s2 = 2'b10;
reg[1:0]state, next_state;
always@(posedge clk or posedge rst)begin
if(rst)
state <= s0;
else 
state <= next_state;
end

always@(*)begin
out = 0;
case(state)
s0: begin
if(in)
next_state = s1;
else
next_state = s0;
end

s1: begin
if(in)
next_state = s1;
else
next_state = s2;
end

s2: begin
if(in)begin
next_state = s1;
out = 1;
end
else
next_state = s0;
end
endcase
end
endmodule




//101 melay non overlap
module lpw(input clk,rst,in,output reg out);
parameter s0 = 2'b00;
parameter s1 = 2'b01;
parameter s2 = 2'b10;
reg[1:0]state, next_state;
always@(posedge clk or posedge rst)begin
if(rst)
state <= s0;
else 
state <= next_state;
end

always@(*)begin
out = 0;
case(state)
s0: begin
if(in)
next_state = s1;
else
next_state = s0;
end

s1: begin
if(in)
next_state = s2;
else
next_state = s0;
end

s2: begin
if(in)begin
next_state = s0;
out = 1;
end
else
next_state = s0;
end

endcase
end
endmodule




//101 moore overlap
module lpw(input clk,rst,in,output reg out);
parameter s0 = 2'b00;
parameter s1 = 2'b01;
parameter s2 = 2'b10;
parameter s3 = 2'b11;
reg[1:0]state, next_state;
always@(posedge clk or posedge rst)begin
if(rst)
state <= s0;
else 
state <= next_state;
end

always@(*)begin
out = 0;
case(state)
s0: begin
if(in)
next_state = s1;
else
next_state = s0;
end

s1: begin
if(in)
next_state = s1;
else
next_state = s2;
end

s2: begin
if(in)begin
next_state = s3;
end
else
next_state = s0;
end

s3: begin
out = 1;
if(in)
next_state = s1;
else
next_state = s2;
end

endcase
end
endmodule


//101 moore non overlap
module lpw(input in, clk, reset, output reg out);
parameter s0 = 2'b00;
parameter s1 = 2'b01;
parameter s2 = 2'b10;
parameter s3 = 2'b11;
reg [1:0] state, next_state;
always @(posedge clk or posedge reset) begin
    if (reset)
        state <= s0;
    else
        state <= next_state;
end
always @(*) begin
 out = 0;
 case(state)
 s0:
	  if(in)
			next_state = s1;
	  else
			next_state = s0;
 s1:
	  if(in)
			next_state = s1;
	  else
			next_state = s2;
 s2:
	  if(in)
			next_state = s3;
	  else
			next_state = s0;
			
 s3: begin
	  next_state = s0;
	  out = 1;
 end
 endcase
end
endmodule