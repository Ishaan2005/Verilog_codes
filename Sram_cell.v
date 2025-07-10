module nand_gate(input A,B,output C);
assign C = ~(A & B);
endmodule

module sr_latch(input S,R,output Q,Q_bar);
wire n1,n2;
nand_gate a1(n1,S,Q_bar);
nand_gate a2(n2,R,Q);
assign Q = n1;
assign Q_bar = n2;
endmodule

module lpw(input rdwrt,in,select,output out);
wire S,R,Q,Q_bar;
assign S = ~in & select & ~rdwrt;
assign R =  in & select & ~rdwrt;
sr_latch ab(S,R,Q,Q_bar);
assign out = Q;
//assign Q_bar = ~Q;
endmodule