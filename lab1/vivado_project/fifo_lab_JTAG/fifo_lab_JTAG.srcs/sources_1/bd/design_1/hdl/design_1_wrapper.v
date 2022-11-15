//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
//Date        : Mon Nov 14 20:13:12 2022
//Host        : LAPTOP-ZAZU2206 running 64-bit Ubuntu 20.04.4 LTS
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (clk_in1_n_0,
    clk_in1_p_0,
    counter_0,
    data_out_0,
    empty_0,
    enable_read_0,
    enable_write_0,
    full_0,
    half_full_0,
    reset_0);
  input clk_in1_n_0;
  input clk_in1_p_0;
  output [2:0]counter_0;
  output [1:0]data_out_0;
  output empty_0;
  input enable_read_0;
  input enable_write_0;
  output full_0;
  output half_full_0;
  input reset_0;

  wire clk_in1_n_0;
  wire clk_in1_p_0;
  wire [2:0]counter_0;
  wire [1:0]data_out_0;
  wire empty_0;
  wire enable_read_0;
  wire enable_write_0;
  wire full_0;
  wire half_full_0;
  wire reset_0;

  design_1 design_1_i
       (.clk_in1_n_0(clk_in1_n_0),
        .clk_in1_p_0(clk_in1_p_0),
        .counter_0(counter_0),
        .data_out_0(data_out_0),
        .empty_0(empty_0),
        .enable_read_0(enable_read_0),
        .enable_write_0(enable_write_0),
        .full_0(full_0),
        .half_full_0(half_full_0),
        .reset_0(reset_0));
endmodule
