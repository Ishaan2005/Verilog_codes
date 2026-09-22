module vlsi(input[3:0] number, output [3:0] out);
assign out = ~number + 4'd1; // notice the one added is decimal 
endmodule
