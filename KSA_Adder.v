module KSA_Adder(a,b,cin,s,cout);
  input [3:0] a,b;
  input cin;
  output [3:0] s;
  output cout;
  wire [3:0] p,g;           // 1st stage
  wire [3:0] p1,g1,p2,g2;   //2nd & 3rd Stage
  begin
    // 1st stage 
    assign p=a^b;
    assign g=a&b;
    // pre-pocessing stage
    assign p1[0]=p[1] , g1[0]=g[0];
    assign p1[1]=p[1]&p[0] , g1[1]=(p[1]&g[0])|g[1];
    assign p1[2]=p[2]&p[1] , g1[2]=(p[2]&g[1])|g[2];
    assign p1[3]=p[3]&p[2] , g1[3]=(p[3]&g[2])|g[3];
    // Generation of carry
    assign p2[0]=p1[0] , g2[0]=g1[0];
    assign p2[1]=p1[1] , g2[1]=g1[1];
    assign p2[2]=p1[2]&p1[0] , g2[2]=(p1[2]&p1[0])|g1[2];
    assign p2[3]=p1[3]&p1[1] , g2[3]=(p1[3]&p1[1])|g1[3];
    //final processing stage
    assign s[0]=p[0]^cin;
    assign s[1]=p[1]^g2[0];
    assign s[2]=p[2]^g2[1];
    assign s[3]=p[3]^g2[2];
    // cout
    assign cout=g2[3];
  end
endmodule