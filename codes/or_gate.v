module lpw(input a,b,output reg c);
//assign c = a|b;
always@(a or b)begin
if(a==1'b0 && b==1'b0)begin
c = 1'b0;
end
else if(a==1'b0 && b==1'b1)begin
c = 1'b1;
end
else if(a==1'b1 && b==1'b0)begin
c = 1'b1;
end
else
c = 1'b1;
end
endmodule

 module or_logic(input a,b, output reg c);
 always@(a or b)begin 
 if(a==0 && b==0)begin
 c = 0;
 end
 else 
 c=1;
 end
 endmodule
//or is formed using bubbled and but and is formed as and only