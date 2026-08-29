module vlsi(input[3:0]in,output[3:0]out);
assign out[3] = in[3];
assign out[2] = in[3] ^ in[2];
assign out[1] = in[2] ^ in[1];
assign out[0] = in[1] ^ in[0];
endmodule

module vlsi #(parameter k = 16)(input[k-1:0]in,output[k-1:0]out);
assign out = in ^ (in >> 1);
endmodule
