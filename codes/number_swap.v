module xyz(
    input [3:0] a_in,
    input [3:0] b_in,
    output [3:0] a_out,
    output [3:0] b_out
);
    wire [3:0] temp_a, temp_b;

    assign temp_a = a_in ^ b_in;
    assign temp_b = temp_a ^ b_in;
    assign a_out = temp_a ^ temp_b;
    assign b_out = temp_b;
endmodule


module DUT;
reg [3:0] a, b;
wire [3:0] a_out, b_out;
xyz pqr(a,b,a_out,b_out);
initial begin
a = 4'd7;
b = 4'd9;
#10
$display("Before swap: a = %d, b = %d", a, b);
$display("After  swap: a = %d, b = %d", a_out, b_out);
#10
a = 4'd4;
b = 4'd5;
#10
$display("Before swap: a = %d, b = %d", a, b);
$display("After  swap: a = %d, b = %d", a_out, b_out);
#10;
a = 4'd12;
b = 4'd13;
#10
$display("Before swap: a = %d, b = %d", a, b);
$display("After  swap: a = %d, b = %d", a_out, b_out);
end
endmodule
