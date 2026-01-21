module lpw(input a, b,c,output reg sum,cout);
always@(a or b or c)begin
if(a==0)begin
if(b==0 && c==0)begin
sum=0;cout=0;
end
else if(b==0 && c==1)begin
sum=1;cout=0;
end
else if(b==1 && c==0)begin
sum=1;cout=0;
end
else if(b==1 && c==1)begin
sum=0;cout=1;
end

else
if(b==0 && c==0)begin
sum=1;cout=0;
end
else if(b==0 && c==1)begin
sum=0;cout=1;
end
else if(b==1 && c==0)begin
sum=0;cout=1;
end
else if(b==1 && c==1)begin
sum=1;cout=1;
end
end
end
endmodule
//forms 2 latches but more hardware, same for 1 if and all else-if

module lpw(input a,b,cin,output sum,carry);
assign sum = a^b^cin;
assign carry = ((a^b)&cin)|(a&b);
endmodule


module addr(input a,b,c, output reg sum,cout);
always@(a or b or c)begin
if(a==0 && b==0 && c==0)begin
sum=0;cout=0;
end
else if(a==0 && b==0 && c==1)begin
sum=1;cout=0;
end
else if(a==0 && b==1 && c==0)begin
sum=1;cout=0;
end
else if(a==0 && b==1 && c==1)begin
sum=0;cout=1;
end
else if(a==1 && b==0 && c==0)begin
sum=1;cout=0;
end
else if(a==1 && b==0 && c==1)begin
sum=0;cout=1;
end
else if(a==1 && b==1 && c==0)begin
sum=0;cout=1;
end
else begin
sum=1;cout=1;
end
end
endmodule
//need to write begin after else as the 2nd statement
//cout is not considered in just else 
//no latches are used just muxes 
