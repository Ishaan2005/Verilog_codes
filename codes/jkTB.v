module Testbench;
reg clk,rst,j,k;
wire q,qbar;
vlsi v1(.clk(clk),.rst(rst),.j(j),.k(k),.q(q),.qbar(qbar));

initial clk = 0;
always begin 
#5 clk = ~clk;
end

initial begin
$dumpfile("vlsi.vcd");
$dumpvars(0,Testbench);
$monitor($time, " rst = %b,j = %b,k = %b, q = %b, qbar = %b",rst,j,k,q,qbar);

// Initialize
    rst = 0; j = 0; k = 0;
    
    // Release reset after 12 units (offset from clock edge)
    #12 rst = 1;

    // Hold state
    #10 j = 0; k = 0;

    // Set state (q should turn 1 on next posedge)
    #10 j = 1; k = 0;

    // Toggle state (q should toggle to 0, then 1)
    #10 j = 1; k = 1;
    #20; // Let it toggle over 2 clock cycles

    // Reset state
    #10 j = 0; k = 1;
    #10;

$display("end of simulation");
$finish;
end
endmodule
