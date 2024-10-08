/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP3
// Date      : Wed Aug 14 13:53:11 2024
/////////////////////////////////////////////////////////////


module decoder3_8_0 ( en, A, SCANINPORT, SE, SCANOUTPORT, Y );
  input [2:0] A;
  output [7:0] Y;
  input en, SCANINPORT, SE;
  output SCANOUTPORT;
  wire   n1, n2, n3, n4, n5;

  SAEDRVT14_AN3_0P5 U3 ( .A1(A[0]), .A2(n1), .A3(A[1]), .X(Y[7]) );
  SAEDRVT14_AN3_0P5 U4 ( .A1(n1), .A2(n2), .A3(A[1]), .X(Y[6]) );
  SAEDRVT14_AN3_0P5 U5 ( .A1(n1), .A2(n3), .A3(A[0]), .X(Y[5]) );
  SAEDRVT14_AN3_0P5 U6 ( .A1(n2), .A2(n3), .A3(n1), .X(Y[4]) );
  SAEDRVT14_AN2_1 U7 ( .A1(en), .A2(A[2]), .X(n1) );
  SAEDRVT14_AN3_0P5 U8 ( .A1(A[1]), .A2(A[0]), .A3(n4), .X(Y[3]) );
  SAEDRVT14_AN3_0P5 U9 ( .A1(A[1]), .A2(n2), .A3(n4), .X(Y[2]) );
  SAEDRVT14_AN3_0P5 U10 ( .A1(A[0]), .A2(n3), .A3(n4), .X(Y[1]) );
  SAEDRVT14_AN3_0P5 U11 ( .A1(n2), .A2(n3), .A3(n4), .X(Y[0]) );
  SAEDRVT14_NR2_ISO_1 U12 ( .CK(n5), .EN(A[2]), .X(n4) );
  SAEDRVT14_INV_0P5 U13 ( .A(en), .X(n5) );
  SAEDRVT14_INV_0P5 U14 ( .A(A[1]), .X(n3) );
  SAEDRVT14_INV_0P5 U15 ( .A(A[0]), .X(n2) );
endmodule


module decoder3_8_8 ( en, A, SCANINPORT, SE, SCANOUTPORT, Y );
  input [2:0] A;
  output [7:0] Y;
  input en, SCANINPORT, SE;
  output SCANOUTPORT;
  wire   n1, n2, n3, n4, n5;

  SAEDRVT14_AN3_0P5 U3 ( .A1(A[0]), .A2(n1), .A3(A[1]), .X(Y[7]) );
  SAEDRVT14_AN3_0P5 U4 ( .A1(n1), .A2(n2), .A3(A[1]), .X(Y[6]) );
  SAEDRVT14_AN3_0P5 U5 ( .A1(n1), .A2(n3), .A3(A[0]), .X(Y[5]) );
  SAEDRVT14_AN3_0P5 U6 ( .A1(n2), .A2(n3), .A3(n1), .X(Y[4]) );
  SAEDRVT14_AN2_1 U7 ( .A1(en), .A2(A[2]), .X(n1) );
  SAEDRVT14_AN3_0P5 U8 ( .A1(A[1]), .A2(A[0]), .A3(n4), .X(Y[3]) );
  SAEDRVT14_AN3_0P5 U9 ( .A1(A[1]), .A2(n2), .A3(n4), .X(Y[2]) );
  SAEDRVT14_AN3_0P5 U10 ( .A1(A[0]), .A2(n3), .A3(n4), .X(Y[1]) );
  SAEDRVT14_AN3_0P5 U11 ( .A1(n2), .A2(n3), .A3(n4), .X(Y[0]) );
  SAEDRVT14_NR2_ISO_1 U12 ( .CK(n5), .EN(A[2]), .X(n4) );
  SAEDRVT14_INV_0P5 U13 ( .A(en), .X(n5) );
  SAEDRVT14_INV_0P5 U14 ( .A(A[1]), .X(n3) );
  SAEDRVT14_INV_0P5 U15 ( .A(A[0]), .X(n2) );
endmodule


module decoder3_8_7 ( en, A, SCANINPORT, SE, SCANOUTPORT, Y );
  input [2:0] A;
  output [7:0] Y;
  input en, SCANINPORT, SE;
  output SCANOUTPORT;
  wire   n1, n2, n3, n4, n5;

  SAEDRVT14_AN3_0P5 U3 ( .A1(A[0]), .A2(n1), .A3(A[1]), .X(Y[7]) );
  SAEDRVT14_AN3_0P5 U4 ( .A1(n1), .A2(n2), .A3(A[1]), .X(Y[6]) );
  SAEDRVT14_AN3_0P5 U5 ( .A1(n1), .A2(n3), .A3(A[0]), .X(Y[5]) );
  SAEDRVT14_AN3_0P5 U6 ( .A1(n2), .A2(n3), .A3(n1), .X(Y[4]) );
  SAEDRVT14_AN2_1 U7 ( .A1(en), .A2(A[2]), .X(n1) );
  SAEDRVT14_AN3_0P5 U8 ( .A1(A[1]), .A2(A[0]), .A3(n4), .X(Y[3]) );
  SAEDRVT14_AN3_0P5 U9 ( .A1(A[1]), .A2(n2), .A3(n4), .X(Y[2]) );
  SAEDRVT14_AN3_0P5 U10 ( .A1(A[0]), .A2(n3), .A3(n4), .X(Y[1]) );
  SAEDRVT14_AN3_0P5 U11 ( .A1(n2), .A2(n3), .A3(n4), .X(Y[0]) );
  SAEDRVT14_NR2_ISO_1 U12 ( .CK(n5), .EN(A[2]), .X(n4) );
  SAEDRVT14_INV_0P5 U13 ( .A(en), .X(n5) );
  SAEDRVT14_INV_0P5 U14 ( .A(A[1]), .X(n3) );
  SAEDRVT14_INV_0P5 U15 ( .A(A[0]), .X(n2) );
endmodule


module decoder3_8_6 ( en, A, SCANINPORT, SE, SCANOUTPORT, Y );
  input [2:0] A;
  output [7:0] Y;
  input en, SCANINPORT, SE;
  output SCANOUTPORT;
  wire   n1, n2, n3, n4, n5;

  SAEDRVT14_AN3_0P5 U3 ( .A1(A[0]), .A2(n1), .A3(A[1]), .X(Y[7]) );
  SAEDRVT14_AN3_0P5 U4 ( .A1(n1), .A2(n2), .A3(A[1]), .X(Y[6]) );
  SAEDRVT14_AN3_0P5 U5 ( .A1(n1), .A2(n3), .A3(A[0]), .X(Y[5]) );
  SAEDRVT14_AN3_0P5 U6 ( .A1(n2), .A2(n3), .A3(n1), .X(Y[4]) );
  SAEDRVT14_AN2_1 U7 ( .A1(en), .A2(A[2]), .X(n1) );
  SAEDRVT14_AN3_0P5 U8 ( .A1(A[1]), .A2(A[0]), .A3(n4), .X(Y[3]) );
  SAEDRVT14_AN3_0P5 U9 ( .A1(A[1]), .A2(n2), .A3(n4), .X(Y[2]) );
  SAEDRVT14_AN3_0P5 U10 ( .A1(A[0]), .A2(n3), .A3(n4), .X(Y[1]) );
  SAEDRVT14_AN3_0P5 U11 ( .A1(n2), .A2(n3), .A3(n4), .X(Y[0]) );
  SAEDRVT14_NR2_ISO_1 U12 ( .CK(n5), .EN(A[2]), .X(n4) );
  SAEDRVT14_INV_0P5 U13 ( .A(en), .X(n5) );
  SAEDRVT14_INV_0P5 U14 ( .A(A[1]), .X(n3) );
  SAEDRVT14_INV_0P5 U15 ( .A(A[0]), .X(n2) );
endmodule


module decoder3_8_5 ( en, A, SCANINPORT, SE, SCANOUTPORT, Y );
  input [2:0] A;
  output [7:0] Y;
  input en, SCANINPORT, SE;
  output SCANOUTPORT;
  wire   n1, n2, n3, n4, n5;

  SAEDRVT14_AN3_0P5 U3 ( .A1(A[0]), .A2(n1), .A3(A[1]), .X(Y[7]) );
  SAEDRVT14_AN3_0P5 U4 ( .A1(n1), .A2(n2), .A3(A[1]), .X(Y[6]) );
  SAEDRVT14_AN3_0P5 U5 ( .A1(n1), .A2(n3), .A3(A[0]), .X(Y[5]) );
  SAEDRVT14_AN3_0P5 U6 ( .A1(n2), .A2(n3), .A3(n1), .X(Y[4]) );
  SAEDRVT14_AN2_1 U7 ( .A1(en), .A2(A[2]), .X(n1) );
  SAEDRVT14_AN3_0P5 U8 ( .A1(A[1]), .A2(A[0]), .A3(n4), .X(Y[3]) );
  SAEDRVT14_AN3_0P5 U9 ( .A1(A[1]), .A2(n2), .A3(n4), .X(Y[2]) );
  SAEDRVT14_AN3_0P5 U10 ( .A1(A[0]), .A2(n3), .A3(n4), .X(Y[1]) );
  SAEDRVT14_AN3_0P5 U11 ( .A1(n2), .A2(n3), .A3(n4), .X(Y[0]) );
  SAEDRVT14_NR2_ISO_1 U12 ( .CK(n5), .EN(A[2]), .X(n4) );
  SAEDRVT14_INV_0P5 U13 ( .A(en), .X(n5) );
  SAEDRVT14_INV_0P5 U14 ( .A(A[1]), .X(n3) );
  SAEDRVT14_INV_0P5 U15 ( .A(A[0]), .X(n2) );
endmodule


module decoder3_8_4 ( en, A, SCANINPORT, SE, SCANOUTPORT, Y );
  input [2:0] A;
  output [7:0] Y;
  input en, SCANINPORT, SE;
  output SCANOUTPORT;
  wire   n1, n2, n3, n4, n5;

  SAEDRVT14_AN3_0P5 U3 ( .A1(A[0]), .A2(n1), .A3(A[1]), .X(Y[7]) );
  SAEDRVT14_AN3_0P5 U4 ( .A1(n1), .A2(n2), .A3(A[1]), .X(Y[6]) );
  SAEDRVT14_AN3_0P5 U5 ( .A1(n1), .A2(n3), .A3(A[0]), .X(Y[5]) );
  SAEDRVT14_AN3_0P5 U6 ( .A1(n2), .A2(n3), .A3(n1), .X(Y[4]) );
  SAEDRVT14_AN2_1 U7 ( .A1(en), .A2(A[2]), .X(n1) );
  SAEDRVT14_AN3_0P5 U8 ( .A1(A[1]), .A2(A[0]), .A3(n4), .X(Y[3]) );
  SAEDRVT14_AN3_0P5 U9 ( .A1(A[1]), .A2(n2), .A3(n4), .X(Y[2]) );
  SAEDRVT14_AN3_0P5 U10 ( .A1(A[0]), .A2(n3), .A3(n4), .X(Y[1]) );
  SAEDRVT14_AN3_0P5 U11 ( .A1(n2), .A2(n3), .A3(n4), .X(Y[0]) );
  SAEDRVT14_NR2_ISO_1 U12 ( .CK(n5), .EN(A[2]), .X(n4) );
  SAEDRVT14_INV_0P5 U13 ( .A(en), .X(n5) );
  SAEDRVT14_INV_0P5 U14 ( .A(A[1]), .X(n3) );
  SAEDRVT14_INV_0P5 U15 ( .A(A[0]), .X(n2) );
endmodule


module decoder3_8_3 ( en, A, SCANINPORT, SE, SCANOUTPORT, Y );
  input [2:0] A;
  output [7:0] Y;
  input en, SCANINPORT, SE;
  output SCANOUTPORT;
  wire   n1, n2, n3, n4, n5;

  SAEDRVT14_AN3_0P5 U3 ( .A1(A[0]), .A2(n1), .A3(A[1]), .X(Y[7]) );
  SAEDRVT14_AN3_0P5 U4 ( .A1(n1), .A2(n2), .A3(A[1]), .X(Y[6]) );
  SAEDRVT14_AN3_0P5 U5 ( .A1(n1), .A2(n3), .A3(A[0]), .X(Y[5]) );
  SAEDRVT14_AN3_0P5 U6 ( .A1(n2), .A2(n3), .A3(n1), .X(Y[4]) );
  SAEDRVT14_AN2_1 U7 ( .A1(en), .A2(A[2]), .X(n1) );
  SAEDRVT14_AN3_0P5 U8 ( .A1(A[1]), .A2(A[0]), .A3(n4), .X(Y[3]) );
  SAEDRVT14_AN3_0P5 U9 ( .A1(A[1]), .A2(n2), .A3(n4), .X(Y[2]) );
  SAEDRVT14_AN3_0P5 U10 ( .A1(A[0]), .A2(n3), .A3(n4), .X(Y[1]) );
  SAEDRVT14_AN3_0P5 U11 ( .A1(n2), .A2(n3), .A3(n4), .X(Y[0]) );
  SAEDRVT14_NR2_ISO_1 U12 ( .CK(n5), .EN(A[2]), .X(n4) );
  SAEDRVT14_INV_0P5 U13 ( .A(en), .X(n5) );
  SAEDRVT14_INV_0P5 U14 ( .A(A[1]), .X(n3) );
  SAEDRVT14_INV_0P5 U15 ( .A(A[0]), .X(n2) );
endmodule


module decoder3_8_2 ( en, A, SCANINPORT, SE, SCANOUTPORT, Y );
  input [2:0] A;
  output [7:0] Y;
  input en, SCANINPORT, SE;
  output SCANOUTPORT;
  wire   n1, n2, n3, n4, n5;

  SAEDRVT14_AN3_0P5 U3 ( .A1(A[0]), .A2(n1), .A3(A[1]), .X(Y[7]) );
  SAEDRVT14_AN3_0P5 U4 ( .A1(n1), .A2(n2), .A3(A[1]), .X(Y[6]) );
  SAEDRVT14_AN3_0P5 U5 ( .A1(n1), .A2(n3), .A3(A[0]), .X(Y[5]) );
  SAEDRVT14_AN3_0P5 U6 ( .A1(n2), .A2(n3), .A3(n1), .X(Y[4]) );
  SAEDRVT14_AN2_1 U7 ( .A1(en), .A2(A[2]), .X(n1) );
  SAEDRVT14_AN3_0P5 U8 ( .A1(A[1]), .A2(A[0]), .A3(n4), .X(Y[3]) );
  SAEDRVT14_AN3_0P5 U9 ( .A1(A[1]), .A2(n2), .A3(n4), .X(Y[2]) );
  SAEDRVT14_AN3_0P5 U10 ( .A1(A[0]), .A2(n3), .A3(n4), .X(Y[1]) );
  SAEDRVT14_AN3_0P5 U11 ( .A1(n2), .A2(n3), .A3(n4), .X(Y[0]) );
  SAEDRVT14_NR2_ISO_1 U12 ( .CK(n5), .EN(A[2]), .X(n4) );
  SAEDRVT14_INV_0P5 U13 ( .A(en), .X(n5) );
  SAEDRVT14_INV_0P5 U14 ( .A(A[1]), .X(n3) );
  SAEDRVT14_INV_0P5 U15 ( .A(A[0]), .X(n2) );
endmodule


module decoder3_8_1 ( en, A, SCANINPORT, SE, SCANOUTPORT, Y );
  input [2:0] A;
  output [7:0] Y;
  input en, SCANINPORT, SE;
  output SCANOUTPORT;
  wire   n1, n2, n3, n4, n5;

  SAEDRVT14_AN3_0P5 U3 ( .A1(A[0]), .A2(n1), .A3(A[1]), .X(Y[7]) );
  SAEDRVT14_AN3_0P5 U4 ( .A1(n1), .A2(n2), .A3(A[1]), .X(Y[6]) );
  SAEDRVT14_AN3_0P5 U5 ( .A1(n1), .A2(n3), .A3(A[0]), .X(Y[5]) );
  SAEDRVT14_AN3_0P5 U6 ( .A1(n2), .A2(n3), .A3(n1), .X(Y[4]) );
  SAEDRVT14_AN2_1 U7 ( .A1(en), .A2(A[2]), .X(n1) );
  SAEDRVT14_AN3_0P5 U8 ( .A1(A[1]), .A2(A[0]), .A3(n4), .X(Y[3]) );
  SAEDRVT14_AN3_0P5 U9 ( .A1(A[1]), .A2(n2), .A3(n4), .X(Y[2]) );
  SAEDRVT14_AN3_0P5 U10 ( .A1(A[0]), .A2(n3), .A3(n4), .X(Y[1]) );
  SAEDRVT14_AN3_0P5 U11 ( .A1(n2), .A2(n3), .A3(n4), .X(Y[0]) );
  SAEDRVT14_NR2_ISO_1 U12 ( .CK(n5), .EN(A[2]), .X(n4) );
  SAEDRVT14_INV_0P5 U13 ( .A(en), .X(n5) );
  SAEDRVT14_INV_0P5 U14 ( .A(A[1]), .X(n3) );
  SAEDRVT14_INV_0P5 U15 ( .A(A[0]), .X(n2) );
endmodule


module decoder6_64 ( SCANINPORT, SE, SCANOUTPORT, en, A, Y );
  input [5:0] A;
  output [63:0] Y;
  input SCANINPORT, SE, en;
  output SCANOUTPORT;
  wire   net194;
  wire   [7:0] c;

  decoder3_8_0 U0 ( .en(en), .A(A[2:0]), .SCANINPORT(net194), .SE(net194), .Y(
        c) );
  decoder3_8_8 U1 ( .en(c[0]), .A(A[5:3]), .SCANINPORT(net194), .SE(net194), 
        .Y(Y[7:0]) );
  decoder3_8_7 U2 ( .en(c[1]), .A(A[5:3]), .SCANINPORT(net194), .SE(net194), 
        .Y(Y[15:8]) );
  decoder3_8_6 U3 ( .en(c[2]), .A(A[5:3]), .SCANINPORT(net194), .SE(net194), 
        .Y(Y[23:16]) );
  decoder3_8_5 U4 ( .en(c[3]), .A(A[5:3]), .SCANINPORT(net194), .SE(net194), 
        .Y(Y[31:24]) );
  decoder3_8_4 U5 ( .en(c[4]), .A(A[5:3]), .SCANINPORT(net194), .SE(net194), 
        .Y(Y[39:32]) );
  decoder3_8_3 U6 ( .en(c[5]), .A(A[5:3]), .SCANINPORT(net194), .SE(net194), 
        .Y(Y[47:40]) );
  decoder3_8_2 U7 ( .en(c[6]), .A(A[5:3]), .SCANINPORT(net194), .SE(net194), 
        .Y(Y[55:48]) );
  decoder3_8_1 U8 ( .en(c[7]), .A(A[5:3]), .SCANINPORT(net194), .SE(net194), 
        .Y(Y[63:56]) );
  SAEDRVT14_TIE0_V1_2 U9 ( .X(net194) );
endmodule

