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

module lpw #(parameter k =4)(input[k-1:0]a,input[k-1:0]b,input cin,output cout,output[k-1:0]sum);
wire[k:0]carry;
//intermediate carry 
assign carry[0]=cin;
genvar i;
generate
for(i=0;i<k;i=i+1)begin:xyz
addr a1(a[i],b[i],carry[i],sum[i],carry[i+1]);
end
endgenerate 
assign cout = carry[k];
endmodule
