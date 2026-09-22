module Testbench;
reg[3:0]in;
wire[3:0]out;
vlsi v1(.number(in),.out(out));
initial begin
$dumpfile("vlsi.vcd");
$dumpvars(0,Testbench);
$monitor($time,"in = %b, out = %b",in,out);
#5 in = 4'b0110;
#5 in = 4'b1001;
#5 in = 4'b1111;
end
endmodule 
