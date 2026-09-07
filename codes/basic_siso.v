// siso shift register, single bit
module dffd(input clk,rst,in,output reg out);
always@(posedge clk or negedge rst)begin
// negedge rst means active low, or during the negative edge of the clk,
//if(rst) is used, will fetch error because rst will never be positive, hence have to use !rst or specify 
//egedge rst means your reset is intended to be active-low. So when reset occurs: rst = 0
//but if (rst) checks if rst = 1;
if(!rst)
out <= 1'b0;
else
out <= in;
end
endmodule 


module vlsi(input clk,rst,input in,output out);
// dff formed is Positive-edge-triggered D flip-flop with asynchronous active-low reset.
//For a 4-bit SISO shift register, the serial input is still only 1 bit wide
//The 4 bits arrive one at a time over 4 clock cycles.
wire q1,q2,q3;
//dff is a primitive in verilog
dffd d1(clk,rst,in,q1); 
dffd d2(clk,rst,q1,q2); 
dffd d3(clk,rst,q2,q3); 
dffd d4(clk,rst,q3,out);
endmodule

/*
1. Asynchronous, active-high
always @(posedge clk or posedge reset)
    if (reset)

2. Asynchronous, active-low
always @(posedge clk or negedge reset)
    if (!reset)

3. Synchronous, active-high
always @(posedge clk)
    if (reset)

4. Synchronous, active-low
always @(posedge clk)
    if (!reset)

	 
ASYNCHRONOUS active-high reset
always @(posedge clk or posedge reset)
Reset is in the sensitivity list → doesn't have to wait for clock.

always @(posedge clk)
Reset isn't in the sensitivity list → must wait for clock.
*/
