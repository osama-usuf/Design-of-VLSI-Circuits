/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP1
// Date      : Sun Oct 30 23:41:38 2022
/////////////////////////////////////////////////////////////


module stg_moore_fsm ( clk, reset, in, out, current_state, next_state );
  output [2:0] current_state;
  output [2:0] next_state;
  input clk, reset, in;
  output out;
  wire   n3, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38;

  DFFSR \current_state_reg[0]  ( .D(next_state[0]), .CLK(clk), .R(n3), .S(1'b1), .Q(current_state[0]) );
  DFFSR \current_state_reg[2]  ( .D(next_state[2]), .CLK(clk), .R(n3), .S(1'b1), .Q(current_state[2]) );
  DFFSR \current_state_reg[1]  ( .D(next_state[1]), .CLK(clk), .R(n3), .S(1'b1), .Q(current_state[1]) );
  AOI22X1 U30 ( .A(n38), .B(current_state[0]), .C(current_state[2]), .D(n35), 
        .Y(n37) );
  MUX2X1 U31 ( .B(current_state[2]), .A(n24), .S(n25), .Y(out) );
  MUX2X1 U32 ( .B(n26), .A(n27), .S(n28), .Y(next_state[2]) );
  NOR2X1 U33 ( .A(n29), .B(n30), .Y(n27) );
  MUX2X1 U34 ( .B(current_state[0]), .A(current_state[1]), .S(n31), .Y(n30) );
  MUX2X1 U35 ( .B(n32), .A(n31), .S(current_state[1]), .Y(n26) );
  AND2X1 U36 ( .A(current_state[0]), .B(current_state[2]), .Y(n32) );
  OAI22X1 U37 ( .A(n24), .B(n28), .C(current_state[2]), .D(n33), .Y(
        next_state[1]) );
  XNOR2X1 U38 ( .A(n29), .B(n34), .Y(n33) );
  NAND2X1 U39 ( .A(n35), .B(n28), .Y(n34) );
  INVX1 U40 ( .A(n25), .Y(n29) );
  INVX1 U41 ( .A(in), .Y(n28) );
  OAI21X1 U42 ( .A(in), .B(n36), .C(n37), .Y(next_state[0]) );
  NAND2X1 U43 ( .A(current_state[2]), .B(n35), .Y(n24) );
  OAI21X1 U44 ( .A(current_state[1]), .B(current_state[0]), .C(n25), .Y(n35)
         );
  NAND2X1 U45 ( .A(current_state[1]), .B(current_state[0]), .Y(n25) );
  NOR2X1 U46 ( .A(current_state[2]), .B(current_state[1]), .Y(n38) );
  AOI21X1 U47 ( .A(current_state[1]), .B(n31), .C(current_state[0]), .Y(n36)
         );
  INVX1 U48 ( .A(current_state[2]), .Y(n31) );
  INVX1 U49 ( .A(reset), .Y(n3) );
endmodule

