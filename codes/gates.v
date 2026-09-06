//gates

//and gate
module vlsi(input a,b,output out);
assign out = a ? b:1'b0;
endmodule


//or gate 
module vlsi(input a,b,output out);
assign out = a ? 1'b1:b; 
endmodule


//nand
module vlsi(input a,b,output out);
assign out = b ? ~a:1'b1; 
endmodule


//nor
module vlsi(input a,b,output out);
assign out = a ? 0:~b;
endmodule 


//xor gate
module vlsi(input a,b,output out);
assign out = a ? ~b:b;
endmodule


module vlsi(input a,b, output out);
assign out = a & b;
endmodule
// this modelling is dataflow, here data flow is explained using equations and not gates
forms a simple and gate



module vlsi(input a,b, output reg out);
always@(*)begin
if(a == 0 && b == 0)begin
out = 0;
end
if(a == 0 && b == 1)begin
out = 0;
end
if(a == 1 && b == 0)begin
out = 0;
end
if(a == 1 && b == 1)begin
out = 1;
end
end
endmodule
// latch is infered before output


module vlsi(input a,b,output reg out);
always@(*)begin
out = 0;
if(a == 0 && b == 0)begin
out = 0;
end
if(a == 0 && b == 1)begin
out = 0;
end
if(a == 1 && b == 0)begin
out = 0;
end
if(a == 1 && b == 1)begin
out = 1;
end
end
endmodule
// no latch, basic and gate only due to default assignement using out = 0


module vlsi(input a,b, output reg out);
always@(*)begin
if(a == 1 && b == 1)begin
out = 1;
end
else begin
out = 0;
end
end
endmodule
// no latch is infered, output similar to dataflow modelling


module vlsi(input a,b, output reg out);
always@(*)begin
out = 0;
if(a == 0 && b == 0)begin
out = 0;
end
else if(a == 0 && b == 1)begin
out = 0;
end
else if(a == 1 && b == 0)begin
out = 0;
end
else begin
out = 1;
end
end
endmodule

//module vlsi(input a,b, output out);
//assign out = a | b;
//endmodule

/*
module vlsi(input a,b, output reg out);
always@(*)begin
out = 0;
if(a == 0 && b == 0)begin
out = 0;
end
else begin
out = 1;
end
end
endmodule 
*/

/*
module vlsi(input a,b,output reg out);
always@(*)begin
if(a == 0 && b == 0)begin
out = 0;
end
if(a == 0 && b == 1)begin
out = 1;
end
if(a == 1 && b == 0)begin
out = 1;
end
if(a == 1 && b == 1)begin
out = 1;
end
end
endmodule
*/

/*
module vlsi(input a,b,output reg out);
always@(*)begin
out = 0;
if(a == 0 && b == 0)begin
out = 0;
end
else if(a == 0 && b == 1)begin
out = 1;
end
else if(a == 1 && b == 0)begin
out = 1;
end
else begin
out = 1;
end
end
endmodule
*/


/*
module vlsi(input a,b, output reg out);
always@(*)begin 
if(a == 0 && b == 0)begin
out = 0;
end
else if(a == 0 && b == 1)begin
out = 1;
end
else if(a == 1 && b == 0)begin
out = 1;
end
else if(a == 1 && b == 1)begin
out = 1;
end
end
endmodule 
*/


/*
module vlsi(input a,b,output reg out);
always@(*)begin
if(a == 0 && b == 0)begin
out = 0;
end
else if(a == 0 && b == 1)begin
out = 1;
end
else if(a == 1 && b == 0)begin
out = 1;
end
else begin
out = 1;
end
end
endmodule 
*/

// ======================================== XOR Gate ==================================================================
//module vlsi(input a,b, output out);
//assign out = a^b;
//endmodule

/*
module vlsi(input a,b, output reg out);
always@(*)begin
if(a == 0 && b == 0)begin
out = 0;
end
if(a == 0 && b == 1)begin
out = 1;
end
if(a == 1 && b == 0)begin
out = 1;
end
if(a == 1 && b == 1)begin
out = 0;
end
end
endmodule 
*/

/*
module vlsi(input a,b, output reg out);
always@(*)begin
if(a == 0 && b == 0)begin
out = 0;
end
else if(a == 0 && b == 1)begin
out = 1;
end
else if(a == 1 && b == 0)begin
out = 1;
end
else if(a == 1 && b==1)begin
out = 0;
end
end
endmodule 
*/

/*
module vlsi(input a,b, output reg out);
always@(*)begin
if(a == 0 && b == 0)begin
out = 0;
end
else if(a == 0 && b == 1)begin
out = 1;
end
else if(a == 1 && b == 0)begin
out = 1;
end
else begin
out = 0;
end
end
endmodule
*/

//============================================== NAND Gate =================================================================

//module vlsi(input a,b,output out);
//assign out = ~(a & b);
//endmodule


/*
module vlsi(input a,b,output reg out);
always@(*)begin
if(a == 0 && b == 0)begin
out = 1;
end
if(a == 0 && b == 1)begin
out = 1;
end
if(a == 1 && b == 0)begin
out = 1;
end
if(a == 1 && b == 1)begin
out = 0;
end
end
endmodule
*/

/*
module vlsi(input a,b,output reg out);
always@(*)begin
if(a == 0 && b == 0)begin
out = 1; 
end
else if(a == 0 && b == 1)begin
out = 1;
end
else if(a == 1 && b == 0)begin
out = 1;
end
else if(a == 1 && b == 1)begin
out = 0;
end 
end
endmodule 
*/
