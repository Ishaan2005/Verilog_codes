module lpw(input S,R, output Q,Qbar);
assign Qbar = ~(S|Q);
assign Q = ~(R|Qbar);
endmodule



module lpw(input S,R,output Q,Qbar);
assign Q = ~(S & Qbar);
assign Qbar = ~(R & Q);
endmodule



module DUT();
reg S,R;
wire Q,Qbar;
lpw xyz(S,R,Q,Qbar);
initial begin
repeat(20)begin
#5 S = $random % 2;
#5 R = $random % 2;
end
end
endmodule
