//111 melay overlap
module lpw(input clk,reset,in,output reg out);
parameter s0 = 2'b00;
parameter s1 = 2'b01;
parameter s2 = 2'b10;
reg[1:0]state,next_state;
always@(posedge clk or posedge reset)begin
if(reset)
state <= s0;
else 
state <= next_state;
end

always@(*)begin 
out = 0;
case(state)

s0:
if(in)
next_state = s1;
else 
next_state = s0;

s1:
if(in)
next_state = s2;
else 
next_state = s0;

s2:
if(in)begin
out = 1;
next_state = s1;
end
else 
next_state = s0;
endcase
end
endmodule




//111 melay non overlap
module lpw(input clk,reset,in,output reg out);
parameter s0 = 2'b00;
parameter s1 = 2'b01;
parameter s2 = 2'b10;
reg[1:0]state,next_state;
always@(posedge clk or posedge reset)begin
if(reset)
state <= s0;
else 
state <= next_state;
end

always@(*)begin 
out = 0;
case(state)

s0:
if(in)
next_state = s1;
else 
next_state = s0;

s1:
if(in)
next_state = s2;
else 
next_state = s0;

s2:
if(in)begin
out = 1;
next_state = s0;
end
else 
next_state = s0;
endcase
end
endmodule
