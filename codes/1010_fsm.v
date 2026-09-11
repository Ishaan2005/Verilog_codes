module vlsi(input clk,rst,x,output reg out);
localparam s0 = 2'b00;
localparam s1 = 2'b01;
localparam s2 = 2'b10;
localparam s3 = 2'b11;
reg[1:0]ps,ns;

always@(posedge clk or negedge rst)begin
    if(~rst)
        ps <= s0;
    else
        ps <= ns;
end

always@(*)begin
out = 1'b0;
    case(ps)
        s0:
            if(x)
                ns = s1;
            else
                ns = s0;

        s1:
            if(x)
                ns = s1;
            else
                ns = s2;

        s2: 
            if(x)
                ns = s3;
            else 
                ns = s0;

        s3:
            if(x)
                ns = s1;
            else begin
                ns = s2;
                out = 1'b1;
            end
    endcase
end
endmodule
