module lpw(input[1:0]select,input i0,i1,i2,i3,output reg out);
always@(select)begin
if(select==2'b00)begin
out = i0;
end
else if(select==2'b01)begin
out = i1;
end
else if(select==2'b10)begin
out = i2;
end
else if(select==2'b11)
out = i3;
end
endmodule
// this uses 4 equal to blocks and a latch and muxes
// if else-if else uses 3 equal to blocks and mux only
// all if is similar to all else if cases

module lpw(input[1:0]select,input i0,i1,i2,i3,output reg out);
always@(select)begin
case(select)
2'b00:out=i0;
2'b01:out=i1;
2'b10:out=i2;
2'b11:out=i3;
end
endcase
endmodule
//case statement creates the actual hardware mux and a single mux

module lpw(input s0,s1, input i0,i1,i2,i3,output out);
assign out = ( ~s0&~s1&i0) | (~s0&s1&i1) | (s0&~s1&i2) | (s0&s1&i3);
endmodule 
//this generates internal structure of a mux






