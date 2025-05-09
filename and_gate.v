module lpw(input a,b,output c);
assign c = a&b;
//No reg needed → value is always directly connected to logic (like a wire).
always@(a or b)begin
if(a==1'b0 && b==1'b0)begin
c=1'b0;
end

if(a==1'b0 && b==1'b1)begin
c=1'b0;
end

if(a==1'b1 && b==1'b0)begin
c=1'b0;
end

if(a==1'b1 && b==1'b1)begin
c=1'b1;
end
end
endmodule 

 module and_logic(input a,b, output reg c);
 always@(a or b)begin 
 if(a==1 && b==1)begin
 c = 1;
 end
 else 
 c=0;
 end
 endmodule