
module muxTB;
reg[15:0]in;
reg[3:0]sel;
wire out;
muxes v1(.in(in),.sel(sel),.out(out));
initial begin
$dumpfile("vlsi.vcd");
$dumpvars(0,muxTB);
$monitor($time, "in = %b,sel = %b,out = %b",in,sel,out);
#5 in = 16'b1001_0101_1001_0111; sel = 4'b0;
#5 sel = 4'b0100;
#5 sel = 4'b0101;
#5 sel = 4'b0110;
#5 sel = 4'b1111;
#5 $finish;
end
endmodule 
