// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Mon Nov 14 20:00:01 2022
// Host        : LAPTOP-ZAZU2206 running 64-bit Ubuntu 20.04.4 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_fifo_0_0_stub.v
// Design      : design_1_fifo_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z045ffg900-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "fifo,Vivado 2019.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, reset, enable_read, enable_write, data_in, 
  data_out, empty, full, half_full, counter)
/* synthesis syn_black_box black_box_pad_pin="clk,reset,enable_read,enable_write,data_in[1:0],data_out[1:0],empty,full,half_full,counter[2:0]" */;
  input clk;
  input reset;
  input enable_read;
  input enable_write;
  input [1:0]data_in;
  output [1:0]data_out;
  output empty;
  output full;
  output half_full;
  output [2:0]counter;
endmodule
