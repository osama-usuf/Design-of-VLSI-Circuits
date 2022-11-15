//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
//Date        : Mon Nov 14 20:13:11 2022
//Host        : LAPTOP-ZAZU2206 running 64-bit Ubuntu 20.04.4 LTS
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_IN1_N_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_IN1_N_0, CLK_DOMAIN design_1_clk_in1_n_0, FREQ_HZ 200000000, INSERT_VIP 0, PHASE 0.000" *) input clk_in1_n_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_IN1_P_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_IN1_P_0, CLK_DOMAIN design_1_clk_in1_p_0, FREQ_HZ 200000000, INSERT_VIP 0, PHASE 0.000" *) input clk_in1_p_0;
  output [2:0]counter_0;
  output [1:0]data_out_0;
  output empty_0;
  input enable_read_0;
  input enable_write_0;
  output full_0;
  output half_full_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET_0, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input reset_0;

  wire clk_in1_n_0_1;
  wire clk_in1_p_0_1;
  wire clk_wiz_0_clk_out1;
  wire dividebyn_0_clock_by_n;
  wire enable_read_0_1;
  wire enable_write_0_1;
  wire [2:0]fifo_0_counter;
  wire [1:0]fifo_0_data_out;
  wire fifo_0_empty;
  wire fifo_0_full;
  wire fifo_0_half_full;
  wire reset_0_1;
  wire [1:0]xlconstant_0_dout;

  assign clk_in1_n_0_1 = clk_in1_n_0;
  assign clk_in1_p_0_1 = clk_in1_p_0;
  assign counter_0[2:0] = fifo_0_counter;
  assign data_out_0[1:0] = fifo_0_data_out;
  assign empty_0 = fifo_0_empty;
  assign enable_read_0_1 = enable_read_0;
  assign enable_write_0_1 = enable_write_0;
  assign full_0 = fifo_0_full;
  assign half_full_0 = fifo_0_half_full;
  assign reset_0_1 = reset_0;
  design_1_clk_wiz_0_0 clk_wiz_0
       (.clk_in1_n(clk_in1_n_0_1),
        .clk_in1_p(clk_in1_p_0_1),
        .clk_out1(clk_wiz_0_clk_out1),
        .reset(reset_0_1));
  design_1_dividebyn_0_0 dividebyn_0
       (.clock(clk_wiz_0_clk_out1),
        .clock_by_n(dividebyn_0_clock_by_n),
        .reset(reset_0_1));
  design_1_fifo_0_0 fifo_0
       (.clk(dividebyn_0_clock_by_n),
        .counter(fifo_0_counter),
        .data_in(xlconstant_0_dout),
        .data_out(fifo_0_data_out),
        .empty(fifo_0_empty),
        .enable_read(enable_read_0_1),
        .enable_write(enable_write_0_1),
        .full(fifo_0_full),
        .half_full(fifo_0_half_full),
        .reset(reset_0_1));
  design_1_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
endmodule
