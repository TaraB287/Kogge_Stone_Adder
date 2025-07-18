module KSA_Adder_tb;
reg [3:0]a,b;
reg cin;
wire [3:0]s;
wire cout;
KSA_Adder k1(a,b,cin,s,cout);
initial
begin
          a=4'b0000; b=4'b1010; cin=0;
      #20 a=4'b0011; b=4'b1110; cin=0;
      #20 a=4'b0100; b=4'b1101; cin=0;
      #20 a=4'b0110; b=4'b0001; cin=0;
      #20 a=4'b1001; b=4'b0111; cin=0;
      #20 a=4'b1010; b=4'b1100; cin=0;
      #20 a=4'b1101; b=4'b1011; cin=0;
      #20 a=4'b1110; b=4'b0011; cin=0;
      #20 $stop;
end
endmodule