module DUT();
reg a,b,cin;
wire sum,cout;
lpw xyz(a,b,cin,cout,sum);
initial begin  
    cin = 1; 
    #5 a = 4'b0000; b = 4'b0011;
    #5 a = 4'b0011; b = 4'b0101;
    #5 a = 4'b0111; b = 4'b0011;
    #5 a = 4'b0110; b = 4'b0100;
    #5 a = 4'b0100; b = 4'b0101;
    #5 a = 4'b0010; b = 4'b0011;
    #5 a = 4'b0101; b = 4'b0101;
    #5 a = 4'b0110; b = 4'b0001;
  end
endmodule

