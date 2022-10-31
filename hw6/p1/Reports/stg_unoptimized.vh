/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP1
// Date      : Sun Oct 30 23:44:04 2022
/////////////////////////////////////////////////////////////


module stg_moore_fsm ( clk, reset, in, out, current_state, next_state );
  output [2:0] current_state;
  output [2:0] next_state;
  input clk, reset, in;
  output out;
  wire   N8, N9, N11, N13, N14, N15, N16, N17, N18, N19, N20, N21, N22, N23,
         N24, N25, N26, N27, N28, N29, N30, N31, n3, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18;

  INVX2 I_8 ( .A(N29), .Y(N30) );
  INVX2 I_7 ( .A(N26), .Y(N27) );
  INVX2 I_6 ( .A(N23), .Y(N24) );
  INVX2 I_5 ( .A(N20), .Y(N21) );
  INVX2 I_4 ( .A(N17), .Y(N18) );
  INVX2 I_3 ( .A(N14), .Y(N15) );
  INVX2 I_1 ( .A(current_state[1]), .Y(N9) );
  INVX2 I_0 ( .A(current_state[2]), .Y(N8) );
  AND2X2 C36 ( .A(current_state[2]), .B(current_state[1]), .Y(N31) );
  OR2X1 C33 ( .A(N8), .B(N9), .Y(N28) );
  OR2X1 C28 ( .A(N8), .B(current_state[1]), .Y(N25) );
  OR2X1 C23 ( .A(N8), .B(current_state[1]), .Y(N22) );
  OR2X1 C19 ( .A(current_state[2]), .B(N9), .Y(N19) );
  OR2X1 C14 ( .A(current_state[2]), .B(N9), .Y(N16) );
  OR2X1 C10 ( .A(current_state[2]), .B(current_state[1]), .Y(N13) );
  AND2X2 C7 ( .A(N8), .B(N9), .Y(N11) );
  DFFSR \current_state_reg[0]  ( .D(next_state[0]), .CLK(clk), .R(n3), .S(1'b1), .Q(current_state[0]) );
  DFFSR \current_state_reg[1]  ( .D(next_state[1]), .CLK(clk), .R(n3), .S(1'b1), .Q(current_state[1]) );
  DFFSR \current_state_reg[2]  ( .D(next_state[2]), .CLK(clk), .R(n3), .S(1'b1), .Q(current_state[2]) );
  INVX1 U5 ( .A(reset), .Y(n3) );
  OR2X1 U7 ( .A(N21), .B(N24), .Y(out) );
  OAI21X1 U8 ( .A(n5), .B(n6), .C(n7), .Y(next_state[2]) );
  AOI21X1 U9 ( .A(n8), .B(n6), .C(N21), .Y(n7) );
  NAND2X1 U10 ( .A(n9), .B(n10), .Y(n8) );
  NOR2X1 U11 ( .A(N30), .B(N15), .Y(n9) );
  OR2X1 U12 ( .A(n11), .B(n12), .Y(next_state[1]) );
  OAI21X1 U13 ( .A(n10), .B(n6), .C(n13), .Y(n12) );
  INVX1 U14 ( .A(N18), .Y(n13) );
  AOI21X1 U15 ( .A(n14), .B(N11), .C(n15), .Y(n10) );
  INVX1 U16 ( .A(n16), .Y(n15) );
  OR2X1 U17 ( .A(n11), .B(n17), .Y(next_state[0]) );
  OAI21X1 U18 ( .A(in), .B(n5), .C(n16), .Y(n17) );
  AOI21X1 U19 ( .A(N31), .B(current_state[0]), .C(N24), .Y(n16) );
  NOR2X1 U20 ( .A(N18), .B(N27), .Y(n5) );
  INVX1 U21 ( .A(n18), .Y(n11) );
  AOI21X1 U22 ( .A(n6), .B(N21), .C(N15), .Y(n18) );
  INVX1 U23 ( .A(in), .Y(n6) );
  OR2X1 U24 ( .A(N28), .B(current_state[0]), .Y(N29) );
  OR2X1 U25 ( .A(N25), .B(n14), .Y(N26) );
  OR2X1 U26 ( .A(N22), .B(current_state[0]), .Y(N23) );
  OR2X1 U27 ( .A(N19), .B(n14), .Y(N20) );
  OR2X1 U28 ( .A(N16), .B(current_state[0]), .Y(N17) );
  OR2X1 U29 ( .A(N13), .B(n14), .Y(N14) );
  INVX1 U30 ( .A(current_state[0]), .Y(n14) );
endmodule

