// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Mon Nov 14 20:00:02 2022
// Host        : LAPTOP-ZAZU2206 running 64-bit Ubuntu 20.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/zazu/vivado_projects/fifo_lab_JTAG/fifo_lab_JTAG.srcs/sources_1/bd/design_1/ip/design_1_fifo_0_0/design_1_fifo_0_0_sim_netlist.v
// Design      : design_1_fifo_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z045ffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_fifo_0_0,fifo,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "fifo,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module design_1_fifo_0_0
   (clk,
    reset,
    enable_read,
    enable_write,
    data_in,
    data_out,
    empty,
    full,
    half_full,
    counter);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 1, PHASE 0.000, CLK_DOMAIN design_1_dividebyn_0_0_clock_by_n, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  input enable_read;
  input enable_write;
  input [1:0]data_in;
  output [1:0]data_out;
  output empty;
  output full;
  output half_full;
  output [2:0]counter;

  wire clk;
  wire [2:0]counter;
  wire [1:0]data_in;
  wire [1:0]data_out;
  wire empty;
  wire enable_read;
  wire enable_write;
  wire full;
  wire half_full;
  wire reset;

  design_1_fifo_0_0_fifo inst
       (.clk(clk),
        .counter(counter),
        .data_in(data_in),
        .data_out(data_out),
        .empty(empty),
        .enable_read(enable_read),
        .enable_write(enable_write),
        .full(full),
        .half_full(half_full),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "fifo" *) 
module design_1_fifo_0_0_fifo
   (counter,
    empty,
    full,
    data_out,
    half_full,
    enable_read,
    clk,
    reset,
    enable_write,
    data_in);
  output [2:0]counter;
  output empty;
  output full;
  output [1:0]data_out;
  output half_full;
  input enable_read;
  input clk;
  input reset;
  input enable_write;
  input [1:0]data_in;

  wire clk;
  wire [2:0]counter;
  wire counter1;
  wire \counter[12]_i_2_n_0 ;
  wire \counter[12]_i_3_n_0 ;
  wire \counter[12]_i_4_n_0 ;
  wire \counter[12]_i_5_n_0 ;
  wire \counter[16]_i_2_n_0 ;
  wire \counter[16]_i_3_n_0 ;
  wire \counter[16]_i_4_n_0 ;
  wire \counter[16]_i_5_n_0 ;
  wire \counter[20]_i_2_n_0 ;
  wire \counter[20]_i_3_n_0 ;
  wire \counter[20]_i_4_n_0 ;
  wire \counter[20]_i_5_n_0 ;
  wire \counter[24]_i_2_n_0 ;
  wire \counter[24]_i_3_n_0 ;
  wire \counter[24]_i_4_n_0 ;
  wire \counter[24]_i_5_n_0 ;
  wire \counter[28]_i_2_n_0 ;
  wire \counter[28]_i_3_n_0 ;
  wire \counter[28]_i_4_n_0 ;
  wire \counter[28]_i_5_n_0 ;
  wire \counter[2]_i_1_n_0 ;
  wire \counter[2]_i_3_n_0 ;
  wire \counter[2]_i_4_n_0 ;
  wire \counter[2]_i_5_n_0 ;
  wire \counter[2]_i_6_n_0 ;
  wire \counter[2]_i_7_n_0 ;
  wire \counter[2]_i_8_n_0 ;
  wire \counter[32]_i_2_n_0 ;
  wire \counter[32]_i_3_n_0 ;
  wire \counter[32]_i_4_n_0 ;
  wire \counter[32]_i_5_n_0 ;
  wire \counter[36]_i_2_n_0 ;
  wire \counter[36]_i_3_n_0 ;
  wire \counter[36]_i_4_n_0 ;
  wire \counter[36]_i_5_n_0 ;
  wire \counter[40]_i_2_n_0 ;
  wire \counter[40]_i_3_n_0 ;
  wire \counter[40]_i_4_n_0 ;
  wire \counter[40]_i_5_n_0 ;
  wire \counter[44]_i_2_n_0 ;
  wire \counter[44]_i_3_n_0 ;
  wire \counter[44]_i_4_n_0 ;
  wire \counter[44]_i_5_n_0 ;
  wire \counter[48]_i_2_n_0 ;
  wire \counter[48]_i_3_n_0 ;
  wire \counter[48]_i_4_n_0 ;
  wire \counter[4]_i_2_n_0 ;
  wire \counter[4]_i_3_n_0 ;
  wire \counter[4]_i_4_n_0 ;
  wire \counter[4]_i_5_n_0 ;
  wire \counter[8]_i_2_n_0 ;
  wire \counter[8]_i_3_n_0 ;
  wire \counter[8]_i_4_n_0 ;
  wire \counter[8]_i_5_n_0 ;
  wire [50:3]counter_reg;
  wire \counter_reg[12]_i_1_n_0 ;
  wire \counter_reg[12]_i_1_n_1 ;
  wire \counter_reg[12]_i_1_n_2 ;
  wire \counter_reg[12]_i_1_n_3 ;
  wire \counter_reg[12]_i_1_n_4 ;
  wire \counter_reg[12]_i_1_n_5 ;
  wire \counter_reg[12]_i_1_n_6 ;
  wire \counter_reg[12]_i_1_n_7 ;
  wire \counter_reg[16]_i_1_n_0 ;
  wire \counter_reg[16]_i_1_n_1 ;
  wire \counter_reg[16]_i_1_n_2 ;
  wire \counter_reg[16]_i_1_n_3 ;
  wire \counter_reg[16]_i_1_n_4 ;
  wire \counter_reg[16]_i_1_n_5 ;
  wire \counter_reg[16]_i_1_n_6 ;
  wire \counter_reg[16]_i_1_n_7 ;
  wire \counter_reg[20]_i_1_n_0 ;
  wire \counter_reg[20]_i_1_n_1 ;
  wire \counter_reg[20]_i_1_n_2 ;
  wire \counter_reg[20]_i_1_n_3 ;
  wire \counter_reg[20]_i_1_n_4 ;
  wire \counter_reg[20]_i_1_n_5 ;
  wire \counter_reg[20]_i_1_n_6 ;
  wire \counter_reg[20]_i_1_n_7 ;
  wire \counter_reg[24]_i_1_n_0 ;
  wire \counter_reg[24]_i_1_n_1 ;
  wire \counter_reg[24]_i_1_n_2 ;
  wire \counter_reg[24]_i_1_n_3 ;
  wire \counter_reg[24]_i_1_n_4 ;
  wire \counter_reg[24]_i_1_n_5 ;
  wire \counter_reg[24]_i_1_n_6 ;
  wire \counter_reg[24]_i_1_n_7 ;
  wire \counter_reg[28]_i_1_n_0 ;
  wire \counter_reg[28]_i_1_n_1 ;
  wire \counter_reg[28]_i_1_n_2 ;
  wire \counter_reg[28]_i_1_n_3 ;
  wire \counter_reg[28]_i_1_n_4 ;
  wire \counter_reg[28]_i_1_n_5 ;
  wire \counter_reg[28]_i_1_n_6 ;
  wire \counter_reg[28]_i_1_n_7 ;
  wire \counter_reg[2]_i_2_n_0 ;
  wire \counter_reg[2]_i_2_n_1 ;
  wire \counter_reg[2]_i_2_n_2 ;
  wire \counter_reg[2]_i_2_n_3 ;
  wire \counter_reg[2]_i_2_n_4 ;
  wire \counter_reg[2]_i_2_n_5 ;
  wire \counter_reg[2]_i_2_n_6 ;
  wire \counter_reg[2]_i_2_n_7 ;
  wire \counter_reg[32]_i_1_n_0 ;
  wire \counter_reg[32]_i_1_n_1 ;
  wire \counter_reg[32]_i_1_n_2 ;
  wire \counter_reg[32]_i_1_n_3 ;
  wire \counter_reg[32]_i_1_n_4 ;
  wire \counter_reg[32]_i_1_n_5 ;
  wire \counter_reg[32]_i_1_n_6 ;
  wire \counter_reg[32]_i_1_n_7 ;
  wire \counter_reg[36]_i_1_n_0 ;
  wire \counter_reg[36]_i_1_n_1 ;
  wire \counter_reg[36]_i_1_n_2 ;
  wire \counter_reg[36]_i_1_n_3 ;
  wire \counter_reg[36]_i_1_n_4 ;
  wire \counter_reg[36]_i_1_n_5 ;
  wire \counter_reg[36]_i_1_n_6 ;
  wire \counter_reg[36]_i_1_n_7 ;
  wire \counter_reg[40]_i_1_n_0 ;
  wire \counter_reg[40]_i_1_n_1 ;
  wire \counter_reg[40]_i_1_n_2 ;
  wire \counter_reg[40]_i_1_n_3 ;
  wire \counter_reg[40]_i_1_n_4 ;
  wire \counter_reg[40]_i_1_n_5 ;
  wire \counter_reg[40]_i_1_n_6 ;
  wire \counter_reg[40]_i_1_n_7 ;
  wire \counter_reg[44]_i_1_n_0 ;
  wire \counter_reg[44]_i_1_n_1 ;
  wire \counter_reg[44]_i_1_n_2 ;
  wire \counter_reg[44]_i_1_n_3 ;
  wire \counter_reg[44]_i_1_n_4 ;
  wire \counter_reg[44]_i_1_n_5 ;
  wire \counter_reg[44]_i_1_n_6 ;
  wire \counter_reg[44]_i_1_n_7 ;
  wire \counter_reg[48]_i_1_n_2 ;
  wire \counter_reg[48]_i_1_n_3 ;
  wire \counter_reg[48]_i_1_n_5 ;
  wire \counter_reg[48]_i_1_n_6 ;
  wire \counter_reg[48]_i_1_n_7 ;
  wire \counter_reg[4]_i_1_n_0 ;
  wire \counter_reg[4]_i_1_n_1 ;
  wire \counter_reg[4]_i_1_n_2 ;
  wire \counter_reg[4]_i_1_n_3 ;
  wire \counter_reg[4]_i_1_n_4 ;
  wire \counter_reg[4]_i_1_n_5 ;
  wire \counter_reg[4]_i_1_n_6 ;
  wire \counter_reg[4]_i_1_n_7 ;
  wire \counter_reg[8]_i_1_n_0 ;
  wire \counter_reg[8]_i_1_n_1 ;
  wire \counter_reg[8]_i_1_n_2 ;
  wire \counter_reg[8]_i_1_n_3 ;
  wire \counter_reg[8]_i_1_n_4 ;
  wire \counter_reg[8]_i_1_n_5 ;
  wire \counter_reg[8]_i_1_n_6 ;
  wire \counter_reg[8]_i_1_n_7 ;
  wire [1:0]data_in;
  wire [1:0]data_out;
  wire \data_out[0]_i_1_n_0 ;
  wire \data_out[1]_i_2_n_0 ;
  wire empty;
  wire empty_INST_0_i_10_n_0;
  wire empty_INST_0_i_11_n_0;
  wire empty_INST_0_i_12_n_0;
  wire empty_INST_0_i_13_n_0;
  wire empty_INST_0_i_14_n_0;
  wire empty_INST_0_i_15_n_0;
  wire empty_INST_0_i_1_n_0;
  wire empty_INST_0_i_2_n_0;
  wire empty_INST_0_i_3_n_0;
  wire empty_INST_0_i_4_n_0;
  wire empty_INST_0_i_5_n_0;
  wire empty_INST_0_i_6_n_0;
  wire empty_INST_0_i_7_n_0;
  wire empty_INST_0_i_8_n_0;
  wire empty_INST_0_i_9_n_0;
  wire enable_read;
  wire enable_write;
  wire \fifo_mem[0][0]_i_1_n_0 ;
  wire \fifo_mem[0][1]_i_1_n_0 ;
  wire \fifo_mem[1][0]_i_1_n_0 ;
  wire \fifo_mem[1][0]_i_2_n_0 ;
  wire \fifo_mem[1][0]_i_3_n_0 ;
  wire \fifo_mem[1][1]_i_10_n_0 ;
  wire \fifo_mem[1][1]_i_11_n_0 ;
  wire \fifo_mem[1][1]_i_12_n_0 ;
  wire \fifo_mem[1][1]_i_13_n_0 ;
  wire \fifo_mem[1][1]_i_14_n_0 ;
  wire \fifo_mem[1][1]_i_15_n_0 ;
  wire \fifo_mem[1][1]_i_16_n_0 ;
  wire \fifo_mem[1][1]_i_17_n_0 ;
  wire \fifo_mem[1][1]_i_1_n_0 ;
  wire \fifo_mem[1][1]_i_2_n_0 ;
  wire \fifo_mem[1][1]_i_3_n_0 ;
  wire \fifo_mem[1][1]_i_4_n_0 ;
  wire \fifo_mem[1][1]_i_5_n_0 ;
  wire \fifo_mem[1][1]_i_6_n_0 ;
  wire \fifo_mem[1][1]_i_7_n_0 ;
  wire \fifo_mem[1][1]_i_8_n_0 ;
  wire \fifo_mem[1][1]_i_9_n_0 ;
  wire \fifo_mem[2][0]_i_1_n_0 ;
  wire \fifo_mem[2][1]_i_1_n_0 ;
  wire \fifo_mem[3][0]_i_1_n_0 ;
  wire \fifo_mem[3][1]_i_1_n_0 ;
  wire \fifo_mem_reg_n_0_[0][0] ;
  wire \fifo_mem_reg_n_0_[0][1] ;
  wire \fifo_mem_reg_n_0_[1][0] ;
  wire \fifo_mem_reg_n_0_[1][1] ;
  wire \fifo_mem_reg_n_0_[2][0] ;
  wire \fifo_mem_reg_n_0_[2][1] ;
  wire \fifo_mem_reg_n_0_[3][0] ;
  wire \fifo_mem_reg_n_0_[3][1] ;
  wire full;
  wire half_full;
  wire half_full_INST_0_i_1_n_0;
  wire half_full_INST_0_i_2_n_0;
  wire half_full_INST_0_i_3_n_0;
  wire half_full_INST_0_i_4_n_0;
  wire half_full_INST_0_i_5_n_0;
  wire \ptr_read[0]_i_2_n_0 ;
  wire [1:0]ptr_read_reg;
  wire \ptr_read_reg[0]_i_1_n_3 ;
  wire \ptr_read_reg[0]_i_1_n_6 ;
  wire \ptr_read_reg[0]_i_1_n_7 ;
  wire ptr_write;
  wire \ptr_write[0]_i_3_n_0 ;
  wire [1:0]ptr_write_reg;
  wire \ptr_write_reg[0]_i_2_n_0 ;
  wire \ptr_write_reg[0]_i_2_n_1 ;
  wire \ptr_write_reg[0]_i_2_n_2 ;
  wire \ptr_write_reg[0]_i_2_n_3 ;
  wire \ptr_write_reg[0]_i_2_n_4 ;
  wire \ptr_write_reg[0]_i_2_n_5 ;
  wire \ptr_write_reg[0]_i_2_n_6 ;
  wire \ptr_write_reg[0]_i_2_n_7 ;
  wire \ptr_write_reg[12]_i_1_n_0 ;
  wire \ptr_write_reg[12]_i_1_n_1 ;
  wire \ptr_write_reg[12]_i_1_n_2 ;
  wire \ptr_write_reg[12]_i_1_n_3 ;
  wire \ptr_write_reg[12]_i_1_n_4 ;
  wire \ptr_write_reg[12]_i_1_n_5 ;
  wire \ptr_write_reg[12]_i_1_n_6 ;
  wire \ptr_write_reg[12]_i_1_n_7 ;
  wire \ptr_write_reg[16]_i_1_n_0 ;
  wire \ptr_write_reg[16]_i_1_n_1 ;
  wire \ptr_write_reg[16]_i_1_n_2 ;
  wire \ptr_write_reg[16]_i_1_n_3 ;
  wire \ptr_write_reg[16]_i_1_n_4 ;
  wire \ptr_write_reg[16]_i_1_n_5 ;
  wire \ptr_write_reg[16]_i_1_n_6 ;
  wire \ptr_write_reg[16]_i_1_n_7 ;
  wire \ptr_write_reg[20]_i_1_n_0 ;
  wire \ptr_write_reg[20]_i_1_n_1 ;
  wire \ptr_write_reg[20]_i_1_n_2 ;
  wire \ptr_write_reg[20]_i_1_n_3 ;
  wire \ptr_write_reg[20]_i_1_n_4 ;
  wire \ptr_write_reg[20]_i_1_n_5 ;
  wire \ptr_write_reg[20]_i_1_n_6 ;
  wire \ptr_write_reg[20]_i_1_n_7 ;
  wire \ptr_write_reg[24]_i_1_n_0 ;
  wire \ptr_write_reg[24]_i_1_n_1 ;
  wire \ptr_write_reg[24]_i_1_n_2 ;
  wire \ptr_write_reg[24]_i_1_n_3 ;
  wire \ptr_write_reg[24]_i_1_n_4 ;
  wire \ptr_write_reg[24]_i_1_n_5 ;
  wire \ptr_write_reg[24]_i_1_n_6 ;
  wire \ptr_write_reg[24]_i_1_n_7 ;
  wire \ptr_write_reg[28]_i_1_n_0 ;
  wire \ptr_write_reg[28]_i_1_n_1 ;
  wire \ptr_write_reg[28]_i_1_n_2 ;
  wire \ptr_write_reg[28]_i_1_n_3 ;
  wire \ptr_write_reg[28]_i_1_n_4 ;
  wire \ptr_write_reg[28]_i_1_n_5 ;
  wire \ptr_write_reg[28]_i_1_n_6 ;
  wire \ptr_write_reg[28]_i_1_n_7 ;
  wire \ptr_write_reg[32]_i_1_n_0 ;
  wire \ptr_write_reg[32]_i_1_n_1 ;
  wire \ptr_write_reg[32]_i_1_n_2 ;
  wire \ptr_write_reg[32]_i_1_n_3 ;
  wire \ptr_write_reg[32]_i_1_n_4 ;
  wire \ptr_write_reg[32]_i_1_n_5 ;
  wire \ptr_write_reg[32]_i_1_n_6 ;
  wire \ptr_write_reg[32]_i_1_n_7 ;
  wire \ptr_write_reg[36]_i_1_n_0 ;
  wire \ptr_write_reg[36]_i_1_n_1 ;
  wire \ptr_write_reg[36]_i_1_n_2 ;
  wire \ptr_write_reg[36]_i_1_n_3 ;
  wire \ptr_write_reg[36]_i_1_n_4 ;
  wire \ptr_write_reg[36]_i_1_n_5 ;
  wire \ptr_write_reg[36]_i_1_n_6 ;
  wire \ptr_write_reg[36]_i_1_n_7 ;
  wire \ptr_write_reg[40]_i_1_n_0 ;
  wire \ptr_write_reg[40]_i_1_n_1 ;
  wire \ptr_write_reg[40]_i_1_n_2 ;
  wire \ptr_write_reg[40]_i_1_n_3 ;
  wire \ptr_write_reg[40]_i_1_n_4 ;
  wire \ptr_write_reg[40]_i_1_n_5 ;
  wire \ptr_write_reg[40]_i_1_n_6 ;
  wire \ptr_write_reg[40]_i_1_n_7 ;
  wire \ptr_write_reg[44]_i_1_n_0 ;
  wire \ptr_write_reg[44]_i_1_n_1 ;
  wire \ptr_write_reg[44]_i_1_n_2 ;
  wire \ptr_write_reg[44]_i_1_n_3 ;
  wire \ptr_write_reg[44]_i_1_n_4 ;
  wire \ptr_write_reg[44]_i_1_n_5 ;
  wire \ptr_write_reg[44]_i_1_n_6 ;
  wire \ptr_write_reg[44]_i_1_n_7 ;
  wire \ptr_write_reg[48]_i_1_n_3 ;
  wire \ptr_write_reg[48]_i_1_n_6 ;
  wire \ptr_write_reg[48]_i_1_n_7 ;
  wire \ptr_write_reg[4]_i_1_n_0 ;
  wire \ptr_write_reg[4]_i_1_n_1 ;
  wire \ptr_write_reg[4]_i_1_n_2 ;
  wire \ptr_write_reg[4]_i_1_n_3 ;
  wire \ptr_write_reg[4]_i_1_n_4 ;
  wire \ptr_write_reg[4]_i_1_n_5 ;
  wire \ptr_write_reg[4]_i_1_n_6 ;
  wire \ptr_write_reg[4]_i_1_n_7 ;
  wire \ptr_write_reg[8]_i_1_n_0 ;
  wire \ptr_write_reg[8]_i_1_n_1 ;
  wire \ptr_write_reg[8]_i_1_n_2 ;
  wire \ptr_write_reg[8]_i_1_n_3 ;
  wire \ptr_write_reg[8]_i_1_n_4 ;
  wire \ptr_write_reg[8]_i_1_n_5 ;
  wire \ptr_write_reg[8]_i_1_n_6 ;
  wire \ptr_write_reg[8]_i_1_n_7 ;
  wire [49:2]ptr_write_reg__0;
  wire reset;
  wire [3:2]\NLW_counter_reg[48]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_counter_reg[48]_i_1_O_UNCONNECTED ;
  wire [3:1]\NLW_ptr_read_reg[0]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_ptr_read_reg[0]_i_1_O_UNCONNECTED ;
  wire [3:1]\NLW_ptr_write_reg[48]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_ptr_write_reg[48]_i_1_O_UNCONNECTED ;

  LUT4 #(
    .INIT(16'h1FE0)) 
    \counter[12]_i_2 
       (.I0(empty_INST_0_i_1_n_0),
        .I1(counter[2]),
        .I2(enable_read),
        .I3(counter_reg[15]),
        .O(\counter[12]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \counter[12]_i_3 
       (.I0(empty_INST_0_i_1_n_0),
        .I1(counter[2]),
        .I2(enable_read),
        .I3(counter_reg[14]),
        .O(\counter[12]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \counter[12]_i_4 
       (.I0(empty_INST_0_i_1_n_0),
        .I1(counter[2]),
        .I2(enable_read),
        .I3(counter_reg[13]),
        .O(\counter[12]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \counter[12]_i_5 
       (.I0(empty_INST_0_i_1_n_0),
        .I1(counter[2]),
        .I2(enable_read),
        .I3(counter_reg[12]),
        .O(\counter[12]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \counter[16]_i_2 
       (.I0(empty_INST_0_i_1_n_0),
        .I1(counter[2]),
        .I2(enable_read),
        .I3(counter_reg[19]),
        .O(\counter[16]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \counter[16]_i_3 
       (.I0(empty_INST_0_i_1_n_0),
        .I1(counter[2]),
        .I2(enable_read),
        .I3(counter_reg[18]),
        .O(\counter[16]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \counter[16]_i_4 
       (.I0(empty_INST_0_i_1_n_0),
        .I1(counter[2]),
        .I2(enable_read),
        .I3(counter_reg[17]),
        .O(\counter[16]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \counter[16]_i_5 
       (.I0(empty_INST_0_i_1_n_0),
        .I1(counter[2]),
        .I2(enable_read),
        .I3(counter_reg[16]),
        .O(\counter[16]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \counter[20]_i_2 
       (.I0(empty_INST_0_i_1_n_0),
        .I1(counter[2]),
        .I2(enable_read),
        .I3(counter_reg[23]),
        .O(\counter[20]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \counter[20]_i_3 
       (.I0(empty_INST_0_i_1_n_0),
        .I1(counter[2]),
        .I2(enable_read),
        .I3(counter_reg[22]),
        .O(\counter[20]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \counter[20]_i_4 
       (.I0(empty_INST_0_i_1_n_0),
        .I1(counter[2]),
        .I2(enable_read),
        .I3(counter_reg[21]),
        .O(\counter[20]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \counter[20]_i_5 
       (.I0(empty_INST_0_i_1_n_0),
        .I1(counter[2]),
        .I2(enable_read),
        .I3(counter_reg[20]),
        .O(\counter[20]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \counter[24]_i_2 
       (.I0(empty_INST_0_i_1_n_0),
        .I1(counter[2]),
        .I2(enable_read),
        .I3(counter_reg[27]),
        .O(\counter[24]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \counter[24]_i_3 
       (.I0(empty_INST_0_i_1_n_0),
        .I1(counter[2]),
        .I2(enable_read),
        .I3(counter_reg[26]),
        .O(\counter[24]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \counter[24]_i_4 
       (.I0(empty_INST_0_i_1_n_0),
        .I1(counter[2]),
        .I2(enable_read),
        .I3(counter_reg[25]),
        .O(\counter[24]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \counter[24]_i_5 
       (.I0(empty_INST_0_i_1_n_0),
        .I1(counter[2]),
        .I2(enable_read),
        .I3(counter_reg[24]),
        .O(\counter[24]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \counter[28]_i_2 
       (.I0(empty_INST_0_i_1_n_0),
        .I1(counter[2]),
        .I2(enable_read),
        .I3(counter_reg[31]),
        .O(\counter[28]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \counter[28]_i_3 
       (.I0(empty_INST_0_i_1_n_0),
        .I1(counter[2]),
        .I2(enable_read),
        .I3(counter_reg[30]),
        .O(\counter[28]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \counter[28]_i_4 
       (.I0(empty_INST_0_i_1_n_0),
        .I1(counter[2]),
        .I2(enable_read),
        .I3(counter_reg[29]),
        .O(\counter[28]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \counter[28]_i_5 
       (.I0(empty_INST_0_i_1_n_0),
        .I1(counter[2]),
        .I2(enable_read),
        .I3(counter_reg[28]),
        .O(\counter[28]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hF8EC)) 
    \counter[2]_i_1 
       (.I0(empty_INST_0_i_1_n_0),
        .I1(enable_write),
        .I2(enable_read),
        .I3(counter[2]),
        .O(\counter[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h01FF)) 
    \counter[2]_i_3 
       (.I0(\counter[2]_i_8_n_0 ),
        .I1(counter[2]),
        .I2(counter_reg[50]),
        .I3(enable_read),
        .O(\counter[2]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \counter[2]_i_4 
       (.I0(empty_INST_0_i_1_n_0),
        .I1(counter[2]),
        .I2(enable_read),
        .I3(counter_reg[3]),
        .O(\counter[2]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h2C)) 
    \counter[2]_i_5 
       (.I0(empty_INST_0_i_1_n_0),
        .I1(counter[2]),
        .I2(enable_read),
        .O(\counter[2]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \counter[2]_i_6 
       (.I0(empty_INST_0_i_1_n_0),
        .I1(counter[2]),
        .I2(enable_read),
        .I3(counter[1]),
        .O(\counter[2]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \counter[2]_i_7 
       (.I0(empty_INST_0_i_1_n_0),
        .I1(counter[2]),
        .I2(enable_read),
        .I3(counter[0]),
        .O(\counter[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \counter[2]_i_8 
       (.I0(empty_INST_0_i_5_n_0),
        .I1(empty_INST_0_i_4_n_0),
        .I2(empty_INST_0_i_3_n_0),
        .I3(half_full_INST_0_i_3_n_0),
        .I4(half_full_INST_0_i_2_n_0),
        .I5(counter[1]),
        .O(\counter[2]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \counter[32]_i_2 
       (.I0(empty_INST_0_i_1_n_0),
        .I1(counter[2]),
        .I2(enable_read),
        .I3(counter_reg[35]),
        .O(\counter[32]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \counter[32]_i_3 
       (.I0(empty_INST_0_i_1_n_0),
        .I1(counter[2]),
        .I2(enable_read),
        .I3(counter_reg[34]),
        .O(\counter[32]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \counter[32]_i_4 
       (.I0(empty_INST_0_i_1_n_0),
        .I1(counter[2]),
        .I2(enable_read),
        .I3(counter_reg[33]),
        .O(\counter[32]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \counter[32]_i_5 
       (.I0(empty_INST_0_i_1_n_0),
        .I1(counter[2]),
        .I2(enable_read),
        .I3(counter_reg[32]),
        .O(\counter[32]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \counter[36]_i_2 
       (.I0(empty_INST_0_i_1_n_0),
        .I1(counter[2]),
        .I2(enable_read),
        .I3(counter_reg[39]),
        .O(\counter[36]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \counter[36]_i_3 
       (.I0(empty_INST_0_i_1_n_0),
        .I1(counter[2]),
        .I2(enable_read),
        .I3(counter_reg[38]),
        .O(\counter[36]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \counter[36]_i_4 
       (.I0(empty_INST_0_i_1_n_0),
        .I1(counter[2]),
        .I2(enable_read),
        .I3(counter_reg[37]),
        .O(\counter[36]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \counter[36]_i_5 
       (.I0(empty_INST_0_i_1_n_0),
        .I1(counter[2]),
        .I2(enable_read),
        .I3(counter_reg[36]),
        .O(\counter[36]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \counter[40]_i_2 
       (.I0(empty_INST_0_i_1_n_0),
        .I1(counter[2]),
        .I2(enable_read),
        .I3(counter_reg[43]),
        .O(\counter[40]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \counter[40]_i_3 
       (.I0(empty_INST_0_i_1_n_0),
        .I1(counter[2]),
        .I2(enable_read),
        .I3(counter_reg[42]),
        .O(\counter[40]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \counter[40]_i_4 
       (.I0(empty_INST_0_i_1_n_0),
        .I1(counter[2]),
        .I2(enable_read),
        .I3(counter_reg[41]),
        .O(\counter[40]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \counter[40]_i_5 
       (.I0(empty_INST_0_i_1_n_0),
        .I1(counter[2]),
        .I2(enable_read),
        .I3(counter_reg[40]),
        .O(\counter[40]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \counter[44]_i_2 
       (.I0(empty_INST_0_i_1_n_0),
        .I1(counter[2]),
        .I2(enable_read),
        .I3(counter_reg[47]),
        .O(\counter[44]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \counter[44]_i_3 
       (.I0(empty_INST_0_i_1_n_0),
        .I1(counter[2]),
        .I2(enable_read),
        .I3(counter_reg[46]),
        .O(\counter[44]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \counter[44]_i_4 
       (.I0(empty_INST_0_i_1_n_0),
        .I1(counter[2]),
        .I2(enable_read),
        .I3(counter_reg[45]),
        .O(\counter[44]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \counter[44]_i_5 
       (.I0(empty_INST_0_i_1_n_0),
        .I1(counter[2]),
        .I2(enable_read),
        .I3(counter_reg[44]),
        .O(\counter[44]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h3C38)) 
    \counter[48]_i_2 
       (.I0(counter[2]),
        .I1(enable_read),
        .I2(counter_reg[50]),
        .I3(\counter[2]_i_8_n_0 ),
        .O(\counter[48]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \counter[48]_i_3 
       (.I0(empty_INST_0_i_1_n_0),
        .I1(counter[2]),
        .I2(enable_read),
        .I3(counter_reg[49]),
        .O(\counter[48]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \counter[48]_i_4 
       (.I0(empty_INST_0_i_1_n_0),
        .I1(counter[2]),
        .I2(enable_read),
        .I3(counter_reg[48]),
        .O(\counter[48]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \counter[4]_i_2 
       (.I0(empty_INST_0_i_1_n_0),
        .I1(counter[2]),
        .I2(enable_read),
        .I3(counter_reg[7]),
        .O(\counter[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \counter[4]_i_3 
       (.I0(empty_INST_0_i_1_n_0),
        .I1(counter[2]),
        .I2(enable_read),
        .I3(counter_reg[6]),
        .O(\counter[4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \counter[4]_i_4 
       (.I0(empty_INST_0_i_1_n_0),
        .I1(counter[2]),
        .I2(enable_read),
        .I3(counter_reg[5]),
        .O(\counter[4]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \counter[4]_i_5 
       (.I0(empty_INST_0_i_1_n_0),
        .I1(counter[2]),
        .I2(enable_read),
        .I3(counter_reg[4]),
        .O(\counter[4]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \counter[8]_i_2 
       (.I0(empty_INST_0_i_1_n_0),
        .I1(counter[2]),
        .I2(enable_read),
        .I3(counter_reg[11]),
        .O(\counter[8]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \counter[8]_i_3 
       (.I0(empty_INST_0_i_1_n_0),
        .I1(counter[2]),
        .I2(enable_read),
        .I3(counter_reg[10]),
        .O(\counter[8]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \counter[8]_i_4 
       (.I0(empty_INST_0_i_1_n_0),
        .I1(counter[2]),
        .I2(enable_read),
        .I3(counter_reg[9]),
        .O(\counter[8]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h1FE0)) 
    \counter[8]_i_5 
       (.I0(empty_INST_0_i_1_n_0),
        .I1(counter[2]),
        .I2(enable_read),
        .I3(counter_reg[8]),
        .O(\counter[8]_i_5_n_0 ));
  FDCE \counter_reg[0] 
       (.C(clk),
        .CE(\counter[2]_i_1_n_0 ),
        .CLR(reset),
        .D(\counter_reg[2]_i_2_n_7 ),
        .Q(counter[0]));
  FDCE \counter_reg[10] 
       (.C(clk),
        .CE(\counter[2]_i_1_n_0 ),
        .CLR(reset),
        .D(\counter_reg[8]_i_1_n_5 ),
        .Q(counter_reg[10]));
  FDCE \counter_reg[11] 
       (.C(clk),
        .CE(\counter[2]_i_1_n_0 ),
        .CLR(reset),
        .D(\counter_reg[8]_i_1_n_4 ),
        .Q(counter_reg[11]));
  FDCE \counter_reg[12] 
       (.C(clk),
        .CE(\counter[2]_i_1_n_0 ),
        .CLR(reset),
        .D(\counter_reg[12]_i_1_n_7 ),
        .Q(counter_reg[12]));
  CARRY4 \counter_reg[12]_i_1 
       (.CI(\counter_reg[8]_i_1_n_0 ),
        .CO({\counter_reg[12]_i_1_n_0 ,\counter_reg[12]_i_1_n_1 ,\counter_reg[12]_i_1_n_2 ,\counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(counter_reg[15:12]),
        .O({\counter_reg[12]_i_1_n_4 ,\counter_reg[12]_i_1_n_5 ,\counter_reg[12]_i_1_n_6 ,\counter_reg[12]_i_1_n_7 }),
        .S({\counter[12]_i_2_n_0 ,\counter[12]_i_3_n_0 ,\counter[12]_i_4_n_0 ,\counter[12]_i_5_n_0 }));
  FDCE \counter_reg[13] 
       (.C(clk),
        .CE(\counter[2]_i_1_n_0 ),
        .CLR(reset),
        .D(\counter_reg[12]_i_1_n_6 ),
        .Q(counter_reg[13]));
  FDCE \counter_reg[14] 
       (.C(clk),
        .CE(\counter[2]_i_1_n_0 ),
        .CLR(reset),
        .D(\counter_reg[12]_i_1_n_5 ),
        .Q(counter_reg[14]));
  FDCE \counter_reg[15] 
       (.C(clk),
        .CE(\counter[2]_i_1_n_0 ),
        .CLR(reset),
        .D(\counter_reg[12]_i_1_n_4 ),
        .Q(counter_reg[15]));
  FDCE \counter_reg[16] 
       (.C(clk),
        .CE(\counter[2]_i_1_n_0 ),
        .CLR(reset),
        .D(\counter_reg[16]_i_1_n_7 ),
        .Q(counter_reg[16]));
  CARRY4 \counter_reg[16]_i_1 
       (.CI(\counter_reg[12]_i_1_n_0 ),
        .CO({\counter_reg[16]_i_1_n_0 ,\counter_reg[16]_i_1_n_1 ,\counter_reg[16]_i_1_n_2 ,\counter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(counter_reg[19:16]),
        .O({\counter_reg[16]_i_1_n_4 ,\counter_reg[16]_i_1_n_5 ,\counter_reg[16]_i_1_n_6 ,\counter_reg[16]_i_1_n_7 }),
        .S({\counter[16]_i_2_n_0 ,\counter[16]_i_3_n_0 ,\counter[16]_i_4_n_0 ,\counter[16]_i_5_n_0 }));
  FDCE \counter_reg[17] 
       (.C(clk),
        .CE(\counter[2]_i_1_n_0 ),
        .CLR(reset),
        .D(\counter_reg[16]_i_1_n_6 ),
        .Q(counter_reg[17]));
  FDCE \counter_reg[18] 
       (.C(clk),
        .CE(\counter[2]_i_1_n_0 ),
        .CLR(reset),
        .D(\counter_reg[16]_i_1_n_5 ),
        .Q(counter_reg[18]));
  FDCE \counter_reg[19] 
       (.C(clk),
        .CE(\counter[2]_i_1_n_0 ),
        .CLR(reset),
        .D(\counter_reg[16]_i_1_n_4 ),
        .Q(counter_reg[19]));
  FDCE \counter_reg[1] 
       (.C(clk),
        .CE(\counter[2]_i_1_n_0 ),
        .CLR(reset),
        .D(\counter_reg[2]_i_2_n_6 ),
        .Q(counter[1]));
  FDCE \counter_reg[20] 
       (.C(clk),
        .CE(\counter[2]_i_1_n_0 ),
        .CLR(reset),
        .D(\counter_reg[20]_i_1_n_7 ),
        .Q(counter_reg[20]));
  CARRY4 \counter_reg[20]_i_1 
       (.CI(\counter_reg[16]_i_1_n_0 ),
        .CO({\counter_reg[20]_i_1_n_0 ,\counter_reg[20]_i_1_n_1 ,\counter_reg[20]_i_1_n_2 ,\counter_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(counter_reg[23:20]),
        .O({\counter_reg[20]_i_1_n_4 ,\counter_reg[20]_i_1_n_5 ,\counter_reg[20]_i_1_n_6 ,\counter_reg[20]_i_1_n_7 }),
        .S({\counter[20]_i_2_n_0 ,\counter[20]_i_3_n_0 ,\counter[20]_i_4_n_0 ,\counter[20]_i_5_n_0 }));
  FDCE \counter_reg[21] 
       (.C(clk),
        .CE(\counter[2]_i_1_n_0 ),
        .CLR(reset),
        .D(\counter_reg[20]_i_1_n_6 ),
        .Q(counter_reg[21]));
  FDCE \counter_reg[22] 
       (.C(clk),
        .CE(\counter[2]_i_1_n_0 ),
        .CLR(reset),
        .D(\counter_reg[20]_i_1_n_5 ),
        .Q(counter_reg[22]));
  FDCE \counter_reg[23] 
       (.C(clk),
        .CE(\counter[2]_i_1_n_0 ),
        .CLR(reset),
        .D(\counter_reg[20]_i_1_n_4 ),
        .Q(counter_reg[23]));
  FDCE \counter_reg[24] 
       (.C(clk),
        .CE(\counter[2]_i_1_n_0 ),
        .CLR(reset),
        .D(\counter_reg[24]_i_1_n_7 ),
        .Q(counter_reg[24]));
  CARRY4 \counter_reg[24]_i_1 
       (.CI(\counter_reg[20]_i_1_n_0 ),
        .CO({\counter_reg[24]_i_1_n_0 ,\counter_reg[24]_i_1_n_1 ,\counter_reg[24]_i_1_n_2 ,\counter_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(counter_reg[27:24]),
        .O({\counter_reg[24]_i_1_n_4 ,\counter_reg[24]_i_1_n_5 ,\counter_reg[24]_i_1_n_6 ,\counter_reg[24]_i_1_n_7 }),
        .S({\counter[24]_i_2_n_0 ,\counter[24]_i_3_n_0 ,\counter[24]_i_4_n_0 ,\counter[24]_i_5_n_0 }));
  FDCE \counter_reg[25] 
       (.C(clk),
        .CE(\counter[2]_i_1_n_0 ),
        .CLR(reset),
        .D(\counter_reg[24]_i_1_n_6 ),
        .Q(counter_reg[25]));
  FDCE \counter_reg[26] 
       (.C(clk),
        .CE(\counter[2]_i_1_n_0 ),
        .CLR(reset),
        .D(\counter_reg[24]_i_1_n_5 ),
        .Q(counter_reg[26]));
  FDCE \counter_reg[27] 
       (.C(clk),
        .CE(\counter[2]_i_1_n_0 ),
        .CLR(reset),
        .D(\counter_reg[24]_i_1_n_4 ),
        .Q(counter_reg[27]));
  FDCE \counter_reg[28] 
       (.C(clk),
        .CE(\counter[2]_i_1_n_0 ),
        .CLR(reset),
        .D(\counter_reg[28]_i_1_n_7 ),
        .Q(counter_reg[28]));
  CARRY4 \counter_reg[28]_i_1 
       (.CI(\counter_reg[24]_i_1_n_0 ),
        .CO({\counter_reg[28]_i_1_n_0 ,\counter_reg[28]_i_1_n_1 ,\counter_reg[28]_i_1_n_2 ,\counter_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(counter_reg[31:28]),
        .O({\counter_reg[28]_i_1_n_4 ,\counter_reg[28]_i_1_n_5 ,\counter_reg[28]_i_1_n_6 ,\counter_reg[28]_i_1_n_7 }),
        .S({\counter[28]_i_2_n_0 ,\counter[28]_i_3_n_0 ,\counter[28]_i_4_n_0 ,\counter[28]_i_5_n_0 }));
  FDCE \counter_reg[29] 
       (.C(clk),
        .CE(\counter[2]_i_1_n_0 ),
        .CLR(reset),
        .D(\counter_reg[28]_i_1_n_6 ),
        .Q(counter_reg[29]));
  FDCE \counter_reg[2] 
       (.C(clk),
        .CE(\counter[2]_i_1_n_0 ),
        .CLR(reset),
        .D(\counter_reg[2]_i_2_n_5 ),
        .Q(counter[2]));
  CARRY4 \counter_reg[2]_i_2 
       (.CI(1'b0),
        .CO({\counter_reg[2]_i_2_n_0 ,\counter_reg[2]_i_2_n_1 ,\counter_reg[2]_i_2_n_2 ,\counter_reg[2]_i_2_n_3 }),
        .CYINIT(\counter[2]_i_3_n_0 ),
        .DI({counter_reg[3],counter}),
        .O({\counter_reg[2]_i_2_n_4 ,\counter_reg[2]_i_2_n_5 ,\counter_reg[2]_i_2_n_6 ,\counter_reg[2]_i_2_n_7 }),
        .S({\counter[2]_i_4_n_0 ,\counter[2]_i_5_n_0 ,\counter[2]_i_6_n_0 ,\counter[2]_i_7_n_0 }));
  FDCE \counter_reg[30] 
       (.C(clk),
        .CE(\counter[2]_i_1_n_0 ),
        .CLR(reset),
        .D(\counter_reg[28]_i_1_n_5 ),
        .Q(counter_reg[30]));
  FDCE \counter_reg[31] 
       (.C(clk),
        .CE(\counter[2]_i_1_n_0 ),
        .CLR(reset),
        .D(\counter_reg[28]_i_1_n_4 ),
        .Q(counter_reg[31]));
  FDCE \counter_reg[32] 
       (.C(clk),
        .CE(\counter[2]_i_1_n_0 ),
        .CLR(reset),
        .D(\counter_reg[32]_i_1_n_7 ),
        .Q(counter_reg[32]));
  CARRY4 \counter_reg[32]_i_1 
       (.CI(\counter_reg[28]_i_1_n_0 ),
        .CO({\counter_reg[32]_i_1_n_0 ,\counter_reg[32]_i_1_n_1 ,\counter_reg[32]_i_1_n_2 ,\counter_reg[32]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(counter_reg[35:32]),
        .O({\counter_reg[32]_i_1_n_4 ,\counter_reg[32]_i_1_n_5 ,\counter_reg[32]_i_1_n_6 ,\counter_reg[32]_i_1_n_7 }),
        .S({\counter[32]_i_2_n_0 ,\counter[32]_i_3_n_0 ,\counter[32]_i_4_n_0 ,\counter[32]_i_5_n_0 }));
  FDCE \counter_reg[33] 
       (.C(clk),
        .CE(\counter[2]_i_1_n_0 ),
        .CLR(reset),
        .D(\counter_reg[32]_i_1_n_6 ),
        .Q(counter_reg[33]));
  FDCE \counter_reg[34] 
       (.C(clk),
        .CE(\counter[2]_i_1_n_0 ),
        .CLR(reset),
        .D(\counter_reg[32]_i_1_n_5 ),
        .Q(counter_reg[34]));
  FDCE \counter_reg[35] 
       (.C(clk),
        .CE(\counter[2]_i_1_n_0 ),
        .CLR(reset),
        .D(\counter_reg[32]_i_1_n_4 ),
        .Q(counter_reg[35]));
  FDCE \counter_reg[36] 
       (.C(clk),
        .CE(\counter[2]_i_1_n_0 ),
        .CLR(reset),
        .D(\counter_reg[36]_i_1_n_7 ),
        .Q(counter_reg[36]));
  CARRY4 \counter_reg[36]_i_1 
       (.CI(\counter_reg[32]_i_1_n_0 ),
        .CO({\counter_reg[36]_i_1_n_0 ,\counter_reg[36]_i_1_n_1 ,\counter_reg[36]_i_1_n_2 ,\counter_reg[36]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(counter_reg[39:36]),
        .O({\counter_reg[36]_i_1_n_4 ,\counter_reg[36]_i_1_n_5 ,\counter_reg[36]_i_1_n_6 ,\counter_reg[36]_i_1_n_7 }),
        .S({\counter[36]_i_2_n_0 ,\counter[36]_i_3_n_0 ,\counter[36]_i_4_n_0 ,\counter[36]_i_5_n_0 }));
  FDCE \counter_reg[37] 
       (.C(clk),
        .CE(\counter[2]_i_1_n_0 ),
        .CLR(reset),
        .D(\counter_reg[36]_i_1_n_6 ),
        .Q(counter_reg[37]));
  FDCE \counter_reg[38] 
       (.C(clk),
        .CE(\counter[2]_i_1_n_0 ),
        .CLR(reset),
        .D(\counter_reg[36]_i_1_n_5 ),
        .Q(counter_reg[38]));
  FDCE \counter_reg[39] 
       (.C(clk),
        .CE(\counter[2]_i_1_n_0 ),
        .CLR(reset),
        .D(\counter_reg[36]_i_1_n_4 ),
        .Q(counter_reg[39]));
  FDCE \counter_reg[3] 
       (.C(clk),
        .CE(\counter[2]_i_1_n_0 ),
        .CLR(reset),
        .D(\counter_reg[2]_i_2_n_4 ),
        .Q(counter_reg[3]));
  FDCE \counter_reg[40] 
       (.C(clk),
        .CE(\counter[2]_i_1_n_0 ),
        .CLR(reset),
        .D(\counter_reg[40]_i_1_n_7 ),
        .Q(counter_reg[40]));
  CARRY4 \counter_reg[40]_i_1 
       (.CI(\counter_reg[36]_i_1_n_0 ),
        .CO({\counter_reg[40]_i_1_n_0 ,\counter_reg[40]_i_1_n_1 ,\counter_reg[40]_i_1_n_2 ,\counter_reg[40]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(counter_reg[43:40]),
        .O({\counter_reg[40]_i_1_n_4 ,\counter_reg[40]_i_1_n_5 ,\counter_reg[40]_i_1_n_6 ,\counter_reg[40]_i_1_n_7 }),
        .S({\counter[40]_i_2_n_0 ,\counter[40]_i_3_n_0 ,\counter[40]_i_4_n_0 ,\counter[40]_i_5_n_0 }));
  FDCE \counter_reg[41] 
       (.C(clk),
        .CE(\counter[2]_i_1_n_0 ),
        .CLR(reset),
        .D(\counter_reg[40]_i_1_n_6 ),
        .Q(counter_reg[41]));
  FDCE \counter_reg[42] 
       (.C(clk),
        .CE(\counter[2]_i_1_n_0 ),
        .CLR(reset),
        .D(\counter_reg[40]_i_1_n_5 ),
        .Q(counter_reg[42]));
  FDCE \counter_reg[43] 
       (.C(clk),
        .CE(\counter[2]_i_1_n_0 ),
        .CLR(reset),
        .D(\counter_reg[40]_i_1_n_4 ),
        .Q(counter_reg[43]));
  FDCE \counter_reg[44] 
       (.C(clk),
        .CE(\counter[2]_i_1_n_0 ),
        .CLR(reset),
        .D(\counter_reg[44]_i_1_n_7 ),
        .Q(counter_reg[44]));
  CARRY4 \counter_reg[44]_i_1 
       (.CI(\counter_reg[40]_i_1_n_0 ),
        .CO({\counter_reg[44]_i_1_n_0 ,\counter_reg[44]_i_1_n_1 ,\counter_reg[44]_i_1_n_2 ,\counter_reg[44]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(counter_reg[47:44]),
        .O({\counter_reg[44]_i_1_n_4 ,\counter_reg[44]_i_1_n_5 ,\counter_reg[44]_i_1_n_6 ,\counter_reg[44]_i_1_n_7 }),
        .S({\counter[44]_i_2_n_0 ,\counter[44]_i_3_n_0 ,\counter[44]_i_4_n_0 ,\counter[44]_i_5_n_0 }));
  FDCE \counter_reg[45] 
       (.C(clk),
        .CE(\counter[2]_i_1_n_0 ),
        .CLR(reset),
        .D(\counter_reg[44]_i_1_n_6 ),
        .Q(counter_reg[45]));
  FDCE \counter_reg[46] 
       (.C(clk),
        .CE(\counter[2]_i_1_n_0 ),
        .CLR(reset),
        .D(\counter_reg[44]_i_1_n_5 ),
        .Q(counter_reg[46]));
  FDCE \counter_reg[47] 
       (.C(clk),
        .CE(\counter[2]_i_1_n_0 ),
        .CLR(reset),
        .D(\counter_reg[44]_i_1_n_4 ),
        .Q(counter_reg[47]));
  FDCE \counter_reg[48] 
       (.C(clk),
        .CE(\counter[2]_i_1_n_0 ),
        .CLR(reset),
        .D(\counter_reg[48]_i_1_n_7 ),
        .Q(counter_reg[48]));
  CARRY4 \counter_reg[48]_i_1 
       (.CI(\counter_reg[44]_i_1_n_0 ),
        .CO({\NLW_counter_reg[48]_i_1_CO_UNCONNECTED [3:2],\counter_reg[48]_i_1_n_2 ,\counter_reg[48]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,counter_reg[49:48]}),
        .O({\NLW_counter_reg[48]_i_1_O_UNCONNECTED [3],\counter_reg[48]_i_1_n_5 ,\counter_reg[48]_i_1_n_6 ,\counter_reg[48]_i_1_n_7 }),
        .S({1'b0,\counter[48]_i_2_n_0 ,\counter[48]_i_3_n_0 ,\counter[48]_i_4_n_0 }));
  FDCE \counter_reg[49] 
       (.C(clk),
        .CE(\counter[2]_i_1_n_0 ),
        .CLR(reset),
        .D(\counter_reg[48]_i_1_n_6 ),
        .Q(counter_reg[49]));
  FDCE \counter_reg[4] 
       (.C(clk),
        .CE(\counter[2]_i_1_n_0 ),
        .CLR(reset),
        .D(\counter_reg[4]_i_1_n_7 ),
        .Q(counter_reg[4]));
  CARRY4 \counter_reg[4]_i_1 
       (.CI(\counter_reg[2]_i_2_n_0 ),
        .CO({\counter_reg[4]_i_1_n_0 ,\counter_reg[4]_i_1_n_1 ,\counter_reg[4]_i_1_n_2 ,\counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(counter_reg[7:4]),
        .O({\counter_reg[4]_i_1_n_4 ,\counter_reg[4]_i_1_n_5 ,\counter_reg[4]_i_1_n_6 ,\counter_reg[4]_i_1_n_7 }),
        .S({\counter[4]_i_2_n_0 ,\counter[4]_i_3_n_0 ,\counter[4]_i_4_n_0 ,\counter[4]_i_5_n_0 }));
  FDCE \counter_reg[50] 
       (.C(clk),
        .CE(\counter[2]_i_1_n_0 ),
        .CLR(reset),
        .D(\counter_reg[48]_i_1_n_5 ),
        .Q(counter_reg[50]));
  FDCE \counter_reg[5] 
       (.C(clk),
        .CE(\counter[2]_i_1_n_0 ),
        .CLR(reset),
        .D(\counter_reg[4]_i_1_n_6 ),
        .Q(counter_reg[5]));
  FDCE \counter_reg[6] 
       (.C(clk),
        .CE(\counter[2]_i_1_n_0 ),
        .CLR(reset),
        .D(\counter_reg[4]_i_1_n_5 ),
        .Q(counter_reg[6]));
  FDCE \counter_reg[7] 
       (.C(clk),
        .CE(\counter[2]_i_1_n_0 ),
        .CLR(reset),
        .D(\counter_reg[4]_i_1_n_4 ),
        .Q(counter_reg[7]));
  FDCE \counter_reg[8] 
       (.C(clk),
        .CE(\counter[2]_i_1_n_0 ),
        .CLR(reset),
        .D(\counter_reg[8]_i_1_n_7 ),
        .Q(counter_reg[8]));
  CARRY4 \counter_reg[8]_i_1 
       (.CI(\counter_reg[4]_i_1_n_0 ),
        .CO({\counter_reg[8]_i_1_n_0 ,\counter_reg[8]_i_1_n_1 ,\counter_reg[8]_i_1_n_2 ,\counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(counter_reg[11:8]),
        .O({\counter_reg[8]_i_1_n_4 ,\counter_reg[8]_i_1_n_5 ,\counter_reg[8]_i_1_n_6 ,\counter_reg[8]_i_1_n_7 }),
        .S({\counter[8]_i_2_n_0 ,\counter[8]_i_3_n_0 ,\counter[8]_i_4_n_0 ,\counter[8]_i_5_n_0 }));
  FDCE \counter_reg[9] 
       (.C(clk),
        .CE(\counter[2]_i_1_n_0 ),
        .CLR(reset),
        .D(\counter_reg[8]_i_1_n_6 ),
        .Q(counter_reg[9]));
  LUT6 #(
    .INIT(64'hCFCFAFA0C0C0AFA0)) 
    \data_out[0]_i_1 
       (.I0(\fifo_mem_reg_n_0_[2][0] ),
        .I1(\fifo_mem_reg_n_0_[3][0] ),
        .I2(ptr_read_reg[1]),
        .I3(\fifo_mem_reg_n_0_[0][0] ),
        .I4(ptr_read_reg[0]),
        .I5(\fifo_mem_reg_n_0_[1][0] ),
        .O(\data_out[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \data_out[1]_i_1 
       (.I0(empty_INST_0_i_1_n_0),
        .I1(counter[2]),
        .I2(enable_read),
        .O(counter1));
  LUT6 #(
    .INIT(64'hCFCFAFA0C0C0AFA0)) 
    \data_out[1]_i_2 
       (.I0(\fifo_mem_reg_n_0_[2][1] ),
        .I1(\fifo_mem_reg_n_0_[3][1] ),
        .I2(ptr_read_reg[1]),
        .I3(\fifo_mem_reg_n_0_[0][1] ),
        .I4(ptr_read_reg[0]),
        .I5(\fifo_mem_reg_n_0_[1][1] ),
        .O(\data_out[1]_i_2_n_0 ));
  FDCE \data_out_reg[0] 
       (.C(clk),
        .CE(counter1),
        .CLR(reset),
        .D(\data_out[0]_i_1_n_0 ),
        .Q(data_out[0]));
  FDCE \data_out_reg[1] 
       (.C(clk),
        .CE(counter1),
        .CLR(reset),
        .D(\data_out[1]_i_2_n_0 ),
        .Q(data_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h1)) 
    empty_INST_0
       (.I0(empty_INST_0_i_1_n_0),
        .I1(counter[2]),
        .O(empty));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    empty_INST_0_i_1
       (.I0(counter[1]),
        .I1(empty_INST_0_i_2_n_0),
        .I2(empty_INST_0_i_3_n_0),
        .I3(empty_INST_0_i_4_n_0),
        .I4(empty_INST_0_i_5_n_0),
        .I5(counter_reg[50]),
        .O(empty_INST_0_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    empty_INST_0_i_10
       (.I0(counter_reg[23]),
        .I1(counter_reg[22]),
        .I2(counter_reg[25]),
        .I3(counter_reg[24]),
        .O(empty_INST_0_i_10_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    empty_INST_0_i_11
       (.I0(counter_reg[31]),
        .I1(counter_reg[30]),
        .I2(counter_reg[33]),
        .I3(counter_reg[32]),
        .O(empty_INST_0_i_11_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    empty_INST_0_i_12
       (.I0(counter_reg[7]),
        .I1(counter_reg[6]),
        .I2(counter_reg[9]),
        .I3(counter_reg[8]),
        .O(empty_INST_0_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    empty_INST_0_i_13
       (.I0(counter_reg[3]),
        .I1(counter[0]),
        .I2(counter_reg[5]),
        .I3(counter_reg[4]),
        .O(empty_INST_0_i_13_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    empty_INST_0_i_14
       (.I0(counter_reg[15]),
        .I1(counter_reg[14]),
        .I2(counter_reg[17]),
        .I3(counter_reg[16]),
        .O(empty_INST_0_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    empty_INST_0_i_15
       (.I0(counter_reg[11]),
        .I1(counter_reg[10]),
        .I2(counter_reg[13]),
        .I3(counter_reg[12]),
        .O(empty_INST_0_i_15_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    empty_INST_0_i_2
       (.I0(empty_INST_0_i_6_n_0),
        .I1(empty_INST_0_i_7_n_0),
        .I2(empty_INST_0_i_8_n_0),
        .I3(empty_INST_0_i_9_n_0),
        .O(empty_INST_0_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    empty_INST_0_i_3
       (.I0(counter_reg[20]),
        .I1(counter_reg[21]),
        .I2(counter_reg[18]),
        .I3(counter_reg[19]),
        .I4(empty_INST_0_i_10_n_0),
        .O(empty_INST_0_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    empty_INST_0_i_4
       (.I0(counter_reg[28]),
        .I1(counter_reg[29]),
        .I2(counter_reg[26]),
        .I3(counter_reg[27]),
        .I4(empty_INST_0_i_11_n_0),
        .O(empty_INST_0_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    empty_INST_0_i_5
       (.I0(empty_INST_0_i_12_n_0),
        .I1(empty_INST_0_i_13_n_0),
        .I2(empty_INST_0_i_14_n_0),
        .I3(empty_INST_0_i_15_n_0),
        .O(empty_INST_0_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    empty_INST_0_i_6
       (.I0(counter_reg[39]),
        .I1(counter_reg[38]),
        .I2(counter_reg[41]),
        .I3(counter_reg[40]),
        .O(empty_INST_0_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    empty_INST_0_i_7
       (.I0(counter_reg[35]),
        .I1(counter_reg[34]),
        .I2(counter_reg[37]),
        .I3(counter_reg[36]),
        .O(empty_INST_0_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    empty_INST_0_i_8
       (.I0(counter_reg[47]),
        .I1(counter_reg[46]),
        .I2(counter_reg[49]),
        .I3(counter_reg[48]),
        .O(empty_INST_0_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    empty_INST_0_i_9
       (.I0(counter_reg[43]),
        .I1(counter_reg[42]),
        .I2(counter_reg[45]),
        .I3(counter_reg[44]),
        .O(empty_INST_0_i_9_n_0));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    \fifo_mem[0][0]_i_1 
       (.I0(\fifo_mem[1][0]_i_2_n_0 ),
        .I1(ptr_write_reg[1]),
        .I2(ptr_write_reg[0]),
        .I3(\fifo_mem[1][1]_i_3_n_0 ),
        .I4(\fifo_mem_reg_n_0_[0][0] ),
        .O(\fifo_mem[0][0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    \fifo_mem[0][1]_i_1 
       (.I0(\fifo_mem[1][1]_i_2_n_0 ),
        .I1(ptr_write_reg[1]),
        .I2(ptr_write_reg[0]),
        .I3(\fifo_mem[1][1]_i_3_n_0 ),
        .I4(\fifo_mem_reg_n_0_[0][1] ),
        .O(\fifo_mem[0][1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \fifo_mem[1][0]_i_1 
       (.I0(\fifo_mem[1][0]_i_2_n_0 ),
        .I1(ptr_write_reg[1]),
        .I2(ptr_write_reg[0]),
        .I3(\fifo_mem[1][1]_i_3_n_0 ),
        .I4(\fifo_mem_reg_n_0_[1][0] ),
        .O(\fifo_mem[1][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hAACACCCC)) 
    \fifo_mem[1][0]_i_2 
       (.I0(data_in[0]),
        .I1(\fifo_mem[1][0]_i_3_n_0 ),
        .I2(counter[2]),
        .I3(empty_INST_0_i_1_n_0),
        .I4(enable_write),
        .O(\fifo_mem[1][0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_mem[1][0]_i_3 
       (.I0(\fifo_mem_reg_n_0_[3][0] ),
        .I1(\fifo_mem_reg_n_0_[1][0] ),
        .I2(ptr_write_reg[0]),
        .I3(\fifo_mem_reg_n_0_[2][0] ),
        .I4(ptr_write_reg[1]),
        .I5(\fifo_mem_reg_n_0_[0][0] ),
        .O(\fifo_mem[1][0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \fifo_mem[1][1]_i_1 
       (.I0(\fifo_mem[1][1]_i_2_n_0 ),
        .I1(ptr_write_reg[1]),
        .I2(ptr_write_reg[0]),
        .I3(\fifo_mem[1][1]_i_3_n_0 ),
        .I4(\fifo_mem_reg_n_0_[1][1] ),
        .O(\fifo_mem[1][1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \fifo_mem[1][1]_i_10 
       (.I0(ptr_write_reg__0[34]),
        .I1(ptr_write_reg__0[35]),
        .I2(ptr_write_reg__0[36]),
        .I3(ptr_write_reg__0[37]),
        .I4(\fifo_mem[1][1]_i_15_n_0 ),
        .O(\fifo_mem[1][1]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \fifo_mem[1][1]_i_11 
       (.I0(ptr_write_reg__0[33]),
        .I1(ptr_write_reg__0[32]),
        .I2(ptr_write_reg__0[31]),
        .I3(ptr_write_reg__0[30]),
        .O(\fifo_mem[1][1]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \fifo_mem[1][1]_i_12 
       (.I0(ptr_write_reg__0[18]),
        .I1(ptr_write_reg__0[19]),
        .I2(ptr_write_reg__0[20]),
        .I3(ptr_write_reg__0[21]),
        .I4(\fifo_mem[1][1]_i_16_n_0 ),
        .O(\fifo_mem[1][1]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \fifo_mem[1][1]_i_13 
       (.I0(ptr_write_reg__0[17]),
        .I1(ptr_write_reg__0[16]),
        .I2(ptr_write_reg__0[15]),
        .I3(ptr_write_reg__0[14]),
        .O(\fifo_mem[1][1]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \fifo_mem[1][1]_i_14 
       (.I0(ptr_write_reg__0[2]),
        .I1(ptr_write_reg__0[3]),
        .I2(ptr_write_reg__0[4]),
        .I3(ptr_write_reg__0[5]),
        .I4(\fifo_mem[1][1]_i_17_n_0 ),
        .O(\fifo_mem[1][1]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \fifo_mem[1][1]_i_15 
       (.I0(ptr_write_reg__0[41]),
        .I1(ptr_write_reg__0[40]),
        .I2(ptr_write_reg__0[39]),
        .I3(ptr_write_reg__0[38]),
        .O(\fifo_mem[1][1]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \fifo_mem[1][1]_i_16 
       (.I0(ptr_write_reg__0[25]),
        .I1(ptr_write_reg__0[24]),
        .I2(ptr_write_reg__0[23]),
        .I3(ptr_write_reg__0[22]),
        .O(\fifo_mem[1][1]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \fifo_mem[1][1]_i_17 
       (.I0(ptr_write_reg__0[9]),
        .I1(ptr_write_reg__0[8]),
        .I2(ptr_write_reg__0[7]),
        .I3(ptr_write_reg__0[6]),
        .O(\fifo_mem[1][1]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAACACCCC)) 
    \fifo_mem[1][1]_i_2 
       (.I0(data_in[1]),
        .I1(\fifo_mem[1][1]_i_4_n_0 ),
        .I2(counter[2]),
        .I3(empty_INST_0_i_1_n_0),
        .I4(enable_write),
        .O(\fifo_mem[1][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4F00000000000000)) 
    \fifo_mem[1][1]_i_3 
       (.I0(\counter[2]_i_8_n_0 ),
        .I1(\fifo_mem[1][1]_i_5_n_0 ),
        .I2(enable_read),
        .I3(\fifo_mem[1][1]_i_6_n_0 ),
        .I4(\fifo_mem[1][1]_i_7_n_0 ),
        .I5(\fifo_mem[1][1]_i_8_n_0 ),
        .O(\fifo_mem[1][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_mem[1][1]_i_4 
       (.I0(\fifo_mem_reg_n_0_[3][1] ),
        .I1(\fifo_mem_reg_n_0_[1][1] ),
        .I2(ptr_write_reg[0]),
        .I3(\fifo_mem_reg_n_0_[2][1] ),
        .I4(ptr_write_reg[1]),
        .I5(\fifo_mem_reg_n_0_[0][1] ),
        .O(\fifo_mem[1][1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \fifo_mem[1][1]_i_5 
       (.I0(counter[2]),
        .I1(counter_reg[50]),
        .O(\fifo_mem[1][1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \fifo_mem[1][1]_i_6 
       (.I0(\fifo_mem[1][1]_i_9_n_0 ),
        .I1(ptr_write_reg__0[45]),
        .I2(ptr_write_reg__0[44]),
        .I3(ptr_write_reg__0[43]),
        .I4(ptr_write_reg__0[42]),
        .I5(\fifo_mem[1][1]_i_10_n_0 ),
        .O(\fifo_mem[1][1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \fifo_mem[1][1]_i_7 
       (.I0(\fifo_mem[1][1]_i_11_n_0 ),
        .I1(ptr_write_reg__0[29]),
        .I2(ptr_write_reg__0[28]),
        .I3(ptr_write_reg__0[27]),
        .I4(ptr_write_reg__0[26]),
        .I5(\fifo_mem[1][1]_i_12_n_0 ),
        .O(\fifo_mem[1][1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \fifo_mem[1][1]_i_8 
       (.I0(\fifo_mem[1][1]_i_13_n_0 ),
        .I1(ptr_write_reg__0[13]),
        .I2(ptr_write_reg__0[12]),
        .I3(ptr_write_reg__0[11]),
        .I4(ptr_write_reg__0[10]),
        .I5(\fifo_mem[1][1]_i_14_n_0 ),
        .O(\fifo_mem[1][1]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \fifo_mem[1][1]_i_9 
       (.I0(ptr_write_reg__0[49]),
        .I1(ptr_write_reg__0[48]),
        .I2(ptr_write_reg__0[47]),
        .I3(ptr_write_reg__0[46]),
        .O(\fifo_mem[1][1]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \fifo_mem[2][0]_i_1 
       (.I0(\fifo_mem[1][0]_i_2_n_0 ),
        .I1(ptr_write_reg[0]),
        .I2(ptr_write_reg[1]),
        .I3(\fifo_mem[1][1]_i_3_n_0 ),
        .I4(\fifo_mem_reg_n_0_[2][0] ),
        .O(\fifo_mem[2][0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \fifo_mem[2][1]_i_1 
       (.I0(\fifo_mem[1][1]_i_2_n_0 ),
        .I1(ptr_write_reg[0]),
        .I2(ptr_write_reg[1]),
        .I3(\fifo_mem[1][1]_i_3_n_0 ),
        .I4(\fifo_mem_reg_n_0_[2][1] ),
        .O(\fifo_mem[2][1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \fifo_mem[3][0]_i_1 
       (.I0(\fifo_mem[1][0]_i_2_n_0 ),
        .I1(ptr_write_reg[1]),
        .I2(ptr_write_reg[0]),
        .I3(\fifo_mem[1][1]_i_3_n_0 ),
        .I4(\fifo_mem_reg_n_0_[3][0] ),
        .O(\fifo_mem[3][0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \fifo_mem[3][1]_i_1 
       (.I0(\fifo_mem[1][1]_i_2_n_0 ),
        .I1(ptr_write_reg[1]),
        .I2(ptr_write_reg[0]),
        .I3(\fifo_mem[1][1]_i_3_n_0 ),
        .I4(\fifo_mem_reg_n_0_[3][1] ),
        .O(\fifo_mem[3][1]_i_1_n_0 ));
  FDCE \fifo_mem_reg[0][0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\fifo_mem[0][0]_i_1_n_0 ),
        .Q(\fifo_mem_reg_n_0_[0][0] ));
  FDCE \fifo_mem_reg[0][1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\fifo_mem[0][1]_i_1_n_0 ),
        .Q(\fifo_mem_reg_n_0_[0][1] ));
  FDCE \fifo_mem_reg[1][0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\fifo_mem[1][0]_i_1_n_0 ),
        .Q(\fifo_mem_reg_n_0_[1][0] ));
  FDCE \fifo_mem_reg[1][1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\fifo_mem[1][1]_i_1_n_0 ),
        .Q(\fifo_mem_reg_n_0_[1][1] ));
  FDCE \fifo_mem_reg[2][0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\fifo_mem[2][0]_i_1_n_0 ),
        .Q(\fifo_mem_reg_n_0_[2][0] ));
  FDCE \fifo_mem_reg[2][1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\fifo_mem[2][1]_i_1_n_0 ),
        .Q(\fifo_mem_reg_n_0_[2][1] ));
  FDCE \fifo_mem_reg[3][0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\fifo_mem[3][0]_i_1_n_0 ),
        .Q(\fifo_mem_reg_n_0_[3][0] ));
  FDCE \fifo_mem_reg[3][1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\fifo_mem[3][1]_i_1_n_0 ),
        .Q(\fifo_mem_reg_n_0_[3][1] ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h4)) 
    full_INST_0
       (.I0(empty_INST_0_i_1_n_0),
        .I1(counter[2]),
        .O(full));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    half_full_INST_0
       (.I0(counter[1]),
        .I1(counter[2]),
        .I2(counter_reg[50]),
        .I3(half_full_INST_0_i_1_n_0),
        .O(half_full));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    half_full_INST_0_i_1
       (.I0(half_full_INST_0_i_2_n_0),
        .I1(half_full_INST_0_i_3_n_0),
        .I2(empty_INST_0_i_3_n_0),
        .I3(empty_INST_0_i_4_n_0),
        .I4(half_full_INST_0_i_4_n_0),
        .I5(half_full_INST_0_i_5_n_0),
        .O(half_full_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    half_full_INST_0_i_2
       (.I0(counter_reg[36]),
        .I1(counter_reg[37]),
        .I2(counter_reg[34]),
        .I3(counter_reg[35]),
        .I4(empty_INST_0_i_6_n_0),
        .O(half_full_INST_0_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    half_full_INST_0_i_3
       (.I0(counter_reg[44]),
        .I1(counter_reg[45]),
        .I2(counter_reg[42]),
        .I3(counter_reg[43]),
        .I4(empty_INST_0_i_8_n_0),
        .O(half_full_INST_0_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    half_full_INST_0_i_4
       (.I0(counter_reg[12]),
        .I1(counter_reg[13]),
        .I2(counter_reg[10]),
        .I3(counter_reg[11]),
        .I4(empty_INST_0_i_14_n_0),
        .O(half_full_INST_0_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    half_full_INST_0_i_5
       (.I0(counter_reg[4]),
        .I1(counter_reg[5]),
        .I2(counter[0]),
        .I3(counter_reg[3]),
        .I4(empty_INST_0_i_12_n_0),
        .O(half_full_INST_0_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \ptr_read[0]_i_2 
       (.I0(ptr_read_reg[0]),
        .O(\ptr_read[0]_i_2_n_0 ));
  FDCE \ptr_read_reg[0] 
       (.C(clk),
        .CE(counter1),
        .CLR(reset),
        .D(\ptr_read_reg[0]_i_1_n_7 ),
        .Q(ptr_read_reg[0]));
  CARRY4 \ptr_read_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\NLW_ptr_read_reg[0]_i_1_CO_UNCONNECTED [3:1],\ptr_read_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\NLW_ptr_read_reg[0]_i_1_O_UNCONNECTED [3:2],\ptr_read_reg[0]_i_1_n_6 ,\ptr_read_reg[0]_i_1_n_7 }),
        .S({1'b0,1'b0,ptr_read_reg[1],\ptr_read[0]_i_2_n_0 }));
  FDCE \ptr_read_reg[1] 
       (.C(clk),
        .CE(counter1),
        .CLR(reset),
        .D(\ptr_read_reg[0]_i_1_n_6 ),
        .Q(ptr_read_reg[1]));
  LUT4 #(
    .INIT(16'h0C44)) 
    \ptr_write[0]_i_1 
       (.I0(counter[2]),
        .I1(enable_write),
        .I2(enable_read),
        .I3(empty_INST_0_i_1_n_0),
        .O(ptr_write));
  LUT1 #(
    .INIT(2'h1)) 
    \ptr_write[0]_i_3 
       (.I0(ptr_write_reg[0]),
        .O(\ptr_write[0]_i_3_n_0 ));
  FDCE \ptr_write_reg[0] 
       (.C(clk),
        .CE(ptr_write),
        .CLR(reset),
        .D(\ptr_write_reg[0]_i_2_n_7 ),
        .Q(ptr_write_reg[0]));
  CARRY4 \ptr_write_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\ptr_write_reg[0]_i_2_n_0 ,\ptr_write_reg[0]_i_2_n_1 ,\ptr_write_reg[0]_i_2_n_2 ,\ptr_write_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\ptr_write_reg[0]_i_2_n_4 ,\ptr_write_reg[0]_i_2_n_5 ,\ptr_write_reg[0]_i_2_n_6 ,\ptr_write_reg[0]_i_2_n_7 }),
        .S({ptr_write_reg__0[3:2],ptr_write_reg[1],\ptr_write[0]_i_3_n_0 }));
  FDCE \ptr_write_reg[10] 
       (.C(clk),
        .CE(ptr_write),
        .CLR(reset),
        .D(\ptr_write_reg[8]_i_1_n_5 ),
        .Q(ptr_write_reg__0[10]));
  FDCE \ptr_write_reg[11] 
       (.C(clk),
        .CE(ptr_write),
        .CLR(reset),
        .D(\ptr_write_reg[8]_i_1_n_4 ),
        .Q(ptr_write_reg__0[11]));
  FDCE \ptr_write_reg[12] 
       (.C(clk),
        .CE(ptr_write),
        .CLR(reset),
        .D(\ptr_write_reg[12]_i_1_n_7 ),
        .Q(ptr_write_reg__0[12]));
  CARRY4 \ptr_write_reg[12]_i_1 
       (.CI(\ptr_write_reg[8]_i_1_n_0 ),
        .CO({\ptr_write_reg[12]_i_1_n_0 ,\ptr_write_reg[12]_i_1_n_1 ,\ptr_write_reg[12]_i_1_n_2 ,\ptr_write_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ptr_write_reg[12]_i_1_n_4 ,\ptr_write_reg[12]_i_1_n_5 ,\ptr_write_reg[12]_i_1_n_6 ,\ptr_write_reg[12]_i_1_n_7 }),
        .S(ptr_write_reg__0[15:12]));
  FDCE \ptr_write_reg[13] 
       (.C(clk),
        .CE(ptr_write),
        .CLR(reset),
        .D(\ptr_write_reg[12]_i_1_n_6 ),
        .Q(ptr_write_reg__0[13]));
  FDCE \ptr_write_reg[14] 
       (.C(clk),
        .CE(ptr_write),
        .CLR(reset),
        .D(\ptr_write_reg[12]_i_1_n_5 ),
        .Q(ptr_write_reg__0[14]));
  FDCE \ptr_write_reg[15] 
       (.C(clk),
        .CE(ptr_write),
        .CLR(reset),
        .D(\ptr_write_reg[12]_i_1_n_4 ),
        .Q(ptr_write_reg__0[15]));
  FDCE \ptr_write_reg[16] 
       (.C(clk),
        .CE(ptr_write),
        .CLR(reset),
        .D(\ptr_write_reg[16]_i_1_n_7 ),
        .Q(ptr_write_reg__0[16]));
  CARRY4 \ptr_write_reg[16]_i_1 
       (.CI(\ptr_write_reg[12]_i_1_n_0 ),
        .CO({\ptr_write_reg[16]_i_1_n_0 ,\ptr_write_reg[16]_i_1_n_1 ,\ptr_write_reg[16]_i_1_n_2 ,\ptr_write_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ptr_write_reg[16]_i_1_n_4 ,\ptr_write_reg[16]_i_1_n_5 ,\ptr_write_reg[16]_i_1_n_6 ,\ptr_write_reg[16]_i_1_n_7 }),
        .S(ptr_write_reg__0[19:16]));
  FDCE \ptr_write_reg[17] 
       (.C(clk),
        .CE(ptr_write),
        .CLR(reset),
        .D(\ptr_write_reg[16]_i_1_n_6 ),
        .Q(ptr_write_reg__0[17]));
  FDCE \ptr_write_reg[18] 
       (.C(clk),
        .CE(ptr_write),
        .CLR(reset),
        .D(\ptr_write_reg[16]_i_1_n_5 ),
        .Q(ptr_write_reg__0[18]));
  FDCE \ptr_write_reg[19] 
       (.C(clk),
        .CE(ptr_write),
        .CLR(reset),
        .D(\ptr_write_reg[16]_i_1_n_4 ),
        .Q(ptr_write_reg__0[19]));
  FDCE \ptr_write_reg[1] 
       (.C(clk),
        .CE(ptr_write),
        .CLR(reset),
        .D(\ptr_write_reg[0]_i_2_n_6 ),
        .Q(ptr_write_reg[1]));
  FDCE \ptr_write_reg[20] 
       (.C(clk),
        .CE(ptr_write),
        .CLR(reset),
        .D(\ptr_write_reg[20]_i_1_n_7 ),
        .Q(ptr_write_reg__0[20]));
  CARRY4 \ptr_write_reg[20]_i_1 
       (.CI(\ptr_write_reg[16]_i_1_n_0 ),
        .CO({\ptr_write_reg[20]_i_1_n_0 ,\ptr_write_reg[20]_i_1_n_1 ,\ptr_write_reg[20]_i_1_n_2 ,\ptr_write_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ptr_write_reg[20]_i_1_n_4 ,\ptr_write_reg[20]_i_1_n_5 ,\ptr_write_reg[20]_i_1_n_6 ,\ptr_write_reg[20]_i_1_n_7 }),
        .S(ptr_write_reg__0[23:20]));
  FDCE \ptr_write_reg[21] 
       (.C(clk),
        .CE(ptr_write),
        .CLR(reset),
        .D(\ptr_write_reg[20]_i_1_n_6 ),
        .Q(ptr_write_reg__0[21]));
  FDCE \ptr_write_reg[22] 
       (.C(clk),
        .CE(ptr_write),
        .CLR(reset),
        .D(\ptr_write_reg[20]_i_1_n_5 ),
        .Q(ptr_write_reg__0[22]));
  FDCE \ptr_write_reg[23] 
       (.C(clk),
        .CE(ptr_write),
        .CLR(reset),
        .D(\ptr_write_reg[20]_i_1_n_4 ),
        .Q(ptr_write_reg__0[23]));
  FDCE \ptr_write_reg[24] 
       (.C(clk),
        .CE(ptr_write),
        .CLR(reset),
        .D(\ptr_write_reg[24]_i_1_n_7 ),
        .Q(ptr_write_reg__0[24]));
  CARRY4 \ptr_write_reg[24]_i_1 
       (.CI(\ptr_write_reg[20]_i_1_n_0 ),
        .CO({\ptr_write_reg[24]_i_1_n_0 ,\ptr_write_reg[24]_i_1_n_1 ,\ptr_write_reg[24]_i_1_n_2 ,\ptr_write_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ptr_write_reg[24]_i_1_n_4 ,\ptr_write_reg[24]_i_1_n_5 ,\ptr_write_reg[24]_i_1_n_6 ,\ptr_write_reg[24]_i_1_n_7 }),
        .S(ptr_write_reg__0[27:24]));
  FDCE \ptr_write_reg[25] 
       (.C(clk),
        .CE(ptr_write),
        .CLR(reset),
        .D(\ptr_write_reg[24]_i_1_n_6 ),
        .Q(ptr_write_reg__0[25]));
  FDCE \ptr_write_reg[26] 
       (.C(clk),
        .CE(ptr_write),
        .CLR(reset),
        .D(\ptr_write_reg[24]_i_1_n_5 ),
        .Q(ptr_write_reg__0[26]));
  FDCE \ptr_write_reg[27] 
       (.C(clk),
        .CE(ptr_write),
        .CLR(reset),
        .D(\ptr_write_reg[24]_i_1_n_4 ),
        .Q(ptr_write_reg__0[27]));
  FDCE \ptr_write_reg[28] 
       (.C(clk),
        .CE(ptr_write),
        .CLR(reset),
        .D(\ptr_write_reg[28]_i_1_n_7 ),
        .Q(ptr_write_reg__0[28]));
  CARRY4 \ptr_write_reg[28]_i_1 
       (.CI(\ptr_write_reg[24]_i_1_n_0 ),
        .CO({\ptr_write_reg[28]_i_1_n_0 ,\ptr_write_reg[28]_i_1_n_1 ,\ptr_write_reg[28]_i_1_n_2 ,\ptr_write_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ptr_write_reg[28]_i_1_n_4 ,\ptr_write_reg[28]_i_1_n_5 ,\ptr_write_reg[28]_i_1_n_6 ,\ptr_write_reg[28]_i_1_n_7 }),
        .S(ptr_write_reg__0[31:28]));
  FDCE \ptr_write_reg[29] 
       (.C(clk),
        .CE(ptr_write),
        .CLR(reset),
        .D(\ptr_write_reg[28]_i_1_n_6 ),
        .Q(ptr_write_reg__0[29]));
  FDCE \ptr_write_reg[2] 
       (.C(clk),
        .CE(ptr_write),
        .CLR(reset),
        .D(\ptr_write_reg[0]_i_2_n_5 ),
        .Q(ptr_write_reg__0[2]));
  FDCE \ptr_write_reg[30] 
       (.C(clk),
        .CE(ptr_write),
        .CLR(reset),
        .D(\ptr_write_reg[28]_i_1_n_5 ),
        .Q(ptr_write_reg__0[30]));
  FDCE \ptr_write_reg[31] 
       (.C(clk),
        .CE(ptr_write),
        .CLR(reset),
        .D(\ptr_write_reg[28]_i_1_n_4 ),
        .Q(ptr_write_reg__0[31]));
  FDCE \ptr_write_reg[32] 
       (.C(clk),
        .CE(ptr_write),
        .CLR(reset),
        .D(\ptr_write_reg[32]_i_1_n_7 ),
        .Q(ptr_write_reg__0[32]));
  CARRY4 \ptr_write_reg[32]_i_1 
       (.CI(\ptr_write_reg[28]_i_1_n_0 ),
        .CO({\ptr_write_reg[32]_i_1_n_0 ,\ptr_write_reg[32]_i_1_n_1 ,\ptr_write_reg[32]_i_1_n_2 ,\ptr_write_reg[32]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ptr_write_reg[32]_i_1_n_4 ,\ptr_write_reg[32]_i_1_n_5 ,\ptr_write_reg[32]_i_1_n_6 ,\ptr_write_reg[32]_i_1_n_7 }),
        .S(ptr_write_reg__0[35:32]));
  FDCE \ptr_write_reg[33] 
       (.C(clk),
        .CE(ptr_write),
        .CLR(reset),
        .D(\ptr_write_reg[32]_i_1_n_6 ),
        .Q(ptr_write_reg__0[33]));
  FDCE \ptr_write_reg[34] 
       (.C(clk),
        .CE(ptr_write),
        .CLR(reset),
        .D(\ptr_write_reg[32]_i_1_n_5 ),
        .Q(ptr_write_reg__0[34]));
  FDCE \ptr_write_reg[35] 
       (.C(clk),
        .CE(ptr_write),
        .CLR(reset),
        .D(\ptr_write_reg[32]_i_1_n_4 ),
        .Q(ptr_write_reg__0[35]));
  FDCE \ptr_write_reg[36] 
       (.C(clk),
        .CE(ptr_write),
        .CLR(reset),
        .D(\ptr_write_reg[36]_i_1_n_7 ),
        .Q(ptr_write_reg__0[36]));
  CARRY4 \ptr_write_reg[36]_i_1 
       (.CI(\ptr_write_reg[32]_i_1_n_0 ),
        .CO({\ptr_write_reg[36]_i_1_n_0 ,\ptr_write_reg[36]_i_1_n_1 ,\ptr_write_reg[36]_i_1_n_2 ,\ptr_write_reg[36]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ptr_write_reg[36]_i_1_n_4 ,\ptr_write_reg[36]_i_1_n_5 ,\ptr_write_reg[36]_i_1_n_6 ,\ptr_write_reg[36]_i_1_n_7 }),
        .S(ptr_write_reg__0[39:36]));
  FDCE \ptr_write_reg[37] 
       (.C(clk),
        .CE(ptr_write),
        .CLR(reset),
        .D(\ptr_write_reg[36]_i_1_n_6 ),
        .Q(ptr_write_reg__0[37]));
  FDCE \ptr_write_reg[38] 
       (.C(clk),
        .CE(ptr_write),
        .CLR(reset),
        .D(\ptr_write_reg[36]_i_1_n_5 ),
        .Q(ptr_write_reg__0[38]));
  FDCE \ptr_write_reg[39] 
       (.C(clk),
        .CE(ptr_write),
        .CLR(reset),
        .D(\ptr_write_reg[36]_i_1_n_4 ),
        .Q(ptr_write_reg__0[39]));
  FDCE \ptr_write_reg[3] 
       (.C(clk),
        .CE(ptr_write),
        .CLR(reset),
        .D(\ptr_write_reg[0]_i_2_n_4 ),
        .Q(ptr_write_reg__0[3]));
  FDCE \ptr_write_reg[40] 
       (.C(clk),
        .CE(ptr_write),
        .CLR(reset),
        .D(\ptr_write_reg[40]_i_1_n_7 ),
        .Q(ptr_write_reg__0[40]));
  CARRY4 \ptr_write_reg[40]_i_1 
       (.CI(\ptr_write_reg[36]_i_1_n_0 ),
        .CO({\ptr_write_reg[40]_i_1_n_0 ,\ptr_write_reg[40]_i_1_n_1 ,\ptr_write_reg[40]_i_1_n_2 ,\ptr_write_reg[40]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ptr_write_reg[40]_i_1_n_4 ,\ptr_write_reg[40]_i_1_n_5 ,\ptr_write_reg[40]_i_1_n_6 ,\ptr_write_reg[40]_i_1_n_7 }),
        .S(ptr_write_reg__0[43:40]));
  FDCE \ptr_write_reg[41] 
       (.C(clk),
        .CE(ptr_write),
        .CLR(reset),
        .D(\ptr_write_reg[40]_i_1_n_6 ),
        .Q(ptr_write_reg__0[41]));
  FDCE \ptr_write_reg[42] 
       (.C(clk),
        .CE(ptr_write),
        .CLR(reset),
        .D(\ptr_write_reg[40]_i_1_n_5 ),
        .Q(ptr_write_reg__0[42]));
  FDCE \ptr_write_reg[43] 
       (.C(clk),
        .CE(ptr_write),
        .CLR(reset),
        .D(\ptr_write_reg[40]_i_1_n_4 ),
        .Q(ptr_write_reg__0[43]));
  FDCE \ptr_write_reg[44] 
       (.C(clk),
        .CE(ptr_write),
        .CLR(reset),
        .D(\ptr_write_reg[44]_i_1_n_7 ),
        .Q(ptr_write_reg__0[44]));
  CARRY4 \ptr_write_reg[44]_i_1 
       (.CI(\ptr_write_reg[40]_i_1_n_0 ),
        .CO({\ptr_write_reg[44]_i_1_n_0 ,\ptr_write_reg[44]_i_1_n_1 ,\ptr_write_reg[44]_i_1_n_2 ,\ptr_write_reg[44]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ptr_write_reg[44]_i_1_n_4 ,\ptr_write_reg[44]_i_1_n_5 ,\ptr_write_reg[44]_i_1_n_6 ,\ptr_write_reg[44]_i_1_n_7 }),
        .S(ptr_write_reg__0[47:44]));
  FDCE \ptr_write_reg[45] 
       (.C(clk),
        .CE(ptr_write),
        .CLR(reset),
        .D(\ptr_write_reg[44]_i_1_n_6 ),
        .Q(ptr_write_reg__0[45]));
  FDCE \ptr_write_reg[46] 
       (.C(clk),
        .CE(ptr_write),
        .CLR(reset),
        .D(\ptr_write_reg[44]_i_1_n_5 ),
        .Q(ptr_write_reg__0[46]));
  FDCE \ptr_write_reg[47] 
       (.C(clk),
        .CE(ptr_write),
        .CLR(reset),
        .D(\ptr_write_reg[44]_i_1_n_4 ),
        .Q(ptr_write_reg__0[47]));
  FDCE \ptr_write_reg[48] 
       (.C(clk),
        .CE(ptr_write),
        .CLR(reset),
        .D(\ptr_write_reg[48]_i_1_n_7 ),
        .Q(ptr_write_reg__0[48]));
  CARRY4 \ptr_write_reg[48]_i_1 
       (.CI(\ptr_write_reg[44]_i_1_n_0 ),
        .CO({\NLW_ptr_write_reg[48]_i_1_CO_UNCONNECTED [3:1],\ptr_write_reg[48]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_ptr_write_reg[48]_i_1_O_UNCONNECTED [3:2],\ptr_write_reg[48]_i_1_n_6 ,\ptr_write_reg[48]_i_1_n_7 }),
        .S({1'b0,1'b0,ptr_write_reg__0[49:48]}));
  FDCE \ptr_write_reg[49] 
       (.C(clk),
        .CE(ptr_write),
        .CLR(reset),
        .D(\ptr_write_reg[48]_i_1_n_6 ),
        .Q(ptr_write_reg__0[49]));
  FDCE \ptr_write_reg[4] 
       (.C(clk),
        .CE(ptr_write),
        .CLR(reset),
        .D(\ptr_write_reg[4]_i_1_n_7 ),
        .Q(ptr_write_reg__0[4]));
  CARRY4 \ptr_write_reg[4]_i_1 
       (.CI(\ptr_write_reg[0]_i_2_n_0 ),
        .CO({\ptr_write_reg[4]_i_1_n_0 ,\ptr_write_reg[4]_i_1_n_1 ,\ptr_write_reg[4]_i_1_n_2 ,\ptr_write_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ptr_write_reg[4]_i_1_n_4 ,\ptr_write_reg[4]_i_1_n_5 ,\ptr_write_reg[4]_i_1_n_6 ,\ptr_write_reg[4]_i_1_n_7 }),
        .S(ptr_write_reg__0[7:4]));
  FDCE \ptr_write_reg[5] 
       (.C(clk),
        .CE(ptr_write),
        .CLR(reset),
        .D(\ptr_write_reg[4]_i_1_n_6 ),
        .Q(ptr_write_reg__0[5]));
  FDCE \ptr_write_reg[6] 
       (.C(clk),
        .CE(ptr_write),
        .CLR(reset),
        .D(\ptr_write_reg[4]_i_1_n_5 ),
        .Q(ptr_write_reg__0[6]));
  FDCE \ptr_write_reg[7] 
       (.C(clk),
        .CE(ptr_write),
        .CLR(reset),
        .D(\ptr_write_reg[4]_i_1_n_4 ),
        .Q(ptr_write_reg__0[7]));
  FDCE \ptr_write_reg[8] 
       (.C(clk),
        .CE(ptr_write),
        .CLR(reset),
        .D(\ptr_write_reg[8]_i_1_n_7 ),
        .Q(ptr_write_reg__0[8]));
  CARRY4 \ptr_write_reg[8]_i_1 
       (.CI(\ptr_write_reg[4]_i_1_n_0 ),
        .CO({\ptr_write_reg[8]_i_1_n_0 ,\ptr_write_reg[8]_i_1_n_1 ,\ptr_write_reg[8]_i_1_n_2 ,\ptr_write_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\ptr_write_reg[8]_i_1_n_4 ,\ptr_write_reg[8]_i_1_n_5 ,\ptr_write_reg[8]_i_1_n_6 ,\ptr_write_reg[8]_i_1_n_7 }),
        .S(ptr_write_reg__0[11:8]));
  FDCE \ptr_write_reg[9] 
       (.C(clk),
        .CE(ptr_write),
        .CLR(reset),
        .D(\ptr_write_reg[8]_i_1_n_6 ),
        .Q(ptr_write_reg__0[9]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
