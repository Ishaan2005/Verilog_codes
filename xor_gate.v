module and_logic(input a,b, output reg c);
 always@(a or b)begin 
 if(a==1 && b==1)begin
 c = 1;
 end
 else 
 c=0;
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

module lpw(input a,b,output out);
wire n_b=~b;
wire n_a=~a;
wire c3;
and_logic(a,n_b,c1);
and_logic(n_a,b,c2);
or_logic(c1,c2,c3);
assign out = c3;
endmodule