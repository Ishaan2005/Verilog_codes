module Testbench;
reg a,b;
wire out;
vlsi v1(.a(a),.b(b),.out(out));
initial begin
$dumpfile("vlsi.vcd");
$dumpvars(0,Testbench);
$monitor($time,"a = %b, b = %b, out = %b",a,b,out);
#5 a = 0; b = 0;
#5 a = 0; b = 1;
#5 a = 1; b = 0;
#5 a = 1; b = 1;
$finish;
end
endmodule 
