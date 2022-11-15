-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Mon Nov 14 20:00:02 2022
-- Host        : LAPTOP-ZAZU2206 running 64-bit Ubuntu 20.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/zazu/vivado_projects/fifo_lab_JTAG/fifo_lab_JTAG.srcs/sources_1/bd/design_1/ip/design_1_fifo_0_0/design_1_fifo_0_0_sim_netlist.vhdl
-- Design      : design_1_fifo_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z045ffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_fifo_0_0_fifo is
  port (
    counter : out STD_LOGIC_VECTOR ( 2 downto 0 );
    empty : out STD_LOGIC;
    full : out STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    half_full : out STD_LOGIC;
    enable_read : in STD_LOGIC;
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    enable_write : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_fifo_0_0_fifo : entity is "fifo";
end design_1_fifo_0_0_fifo;

architecture STRUCTURE of design_1_fifo_0_0_fifo is
  signal \^counter\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal counter1 : STD_LOGIC;
  signal \counter[12]_i_2_n_0\ : STD_LOGIC;
  signal \counter[12]_i_3_n_0\ : STD_LOGIC;
  signal \counter[12]_i_4_n_0\ : STD_LOGIC;
  signal \counter[12]_i_5_n_0\ : STD_LOGIC;
  signal \counter[16]_i_2_n_0\ : STD_LOGIC;
  signal \counter[16]_i_3_n_0\ : STD_LOGIC;
  signal \counter[16]_i_4_n_0\ : STD_LOGIC;
  signal \counter[16]_i_5_n_0\ : STD_LOGIC;
  signal \counter[20]_i_2_n_0\ : STD_LOGIC;
  signal \counter[20]_i_3_n_0\ : STD_LOGIC;
  signal \counter[20]_i_4_n_0\ : STD_LOGIC;
  signal \counter[20]_i_5_n_0\ : STD_LOGIC;
  signal \counter[24]_i_2_n_0\ : STD_LOGIC;
  signal \counter[24]_i_3_n_0\ : STD_LOGIC;
  signal \counter[24]_i_4_n_0\ : STD_LOGIC;
  signal \counter[24]_i_5_n_0\ : STD_LOGIC;
  signal \counter[28]_i_2_n_0\ : STD_LOGIC;
  signal \counter[28]_i_3_n_0\ : STD_LOGIC;
  signal \counter[28]_i_4_n_0\ : STD_LOGIC;
  signal \counter[28]_i_5_n_0\ : STD_LOGIC;
  signal \counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \counter[2]_i_3_n_0\ : STD_LOGIC;
  signal \counter[2]_i_4_n_0\ : STD_LOGIC;
  signal \counter[2]_i_5_n_0\ : STD_LOGIC;
  signal \counter[2]_i_6_n_0\ : STD_LOGIC;
  signal \counter[2]_i_7_n_0\ : STD_LOGIC;
  signal \counter[2]_i_8_n_0\ : STD_LOGIC;
  signal \counter[32]_i_2_n_0\ : STD_LOGIC;
  signal \counter[32]_i_3_n_0\ : STD_LOGIC;
  signal \counter[32]_i_4_n_0\ : STD_LOGIC;
  signal \counter[32]_i_5_n_0\ : STD_LOGIC;
  signal \counter[36]_i_2_n_0\ : STD_LOGIC;
  signal \counter[36]_i_3_n_0\ : STD_LOGIC;
  signal \counter[36]_i_4_n_0\ : STD_LOGIC;
  signal \counter[36]_i_5_n_0\ : STD_LOGIC;
  signal \counter[40]_i_2_n_0\ : STD_LOGIC;
  signal \counter[40]_i_3_n_0\ : STD_LOGIC;
  signal \counter[40]_i_4_n_0\ : STD_LOGIC;
  signal \counter[40]_i_5_n_0\ : STD_LOGIC;
  signal \counter[44]_i_2_n_0\ : STD_LOGIC;
  signal \counter[44]_i_3_n_0\ : STD_LOGIC;
  signal \counter[44]_i_4_n_0\ : STD_LOGIC;
  signal \counter[44]_i_5_n_0\ : STD_LOGIC;
  signal \counter[48]_i_2_n_0\ : STD_LOGIC;
  signal \counter[48]_i_3_n_0\ : STD_LOGIC;
  signal \counter[48]_i_4_n_0\ : STD_LOGIC;
  signal \counter[4]_i_2_n_0\ : STD_LOGIC;
  signal \counter[4]_i_3_n_0\ : STD_LOGIC;
  signal \counter[4]_i_4_n_0\ : STD_LOGIC;
  signal \counter[4]_i_5_n_0\ : STD_LOGIC;
  signal \counter[8]_i_2_n_0\ : STD_LOGIC;
  signal \counter[8]_i_3_n_0\ : STD_LOGIC;
  signal \counter[8]_i_4_n_0\ : STD_LOGIC;
  signal \counter[8]_i_5_n_0\ : STD_LOGIC;
  signal counter_reg : STD_LOGIC_VECTOR ( 50 downto 3 );
  signal \counter_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \counter_reg[2]_i_2_n_1\ : STD_LOGIC;
  signal \counter_reg[2]_i_2_n_2\ : STD_LOGIC;
  signal \counter_reg[2]_i_2_n_3\ : STD_LOGIC;
  signal \counter_reg[2]_i_2_n_4\ : STD_LOGIC;
  signal \counter_reg[2]_i_2_n_5\ : STD_LOGIC;
  signal \counter_reg[2]_i_2_n_6\ : STD_LOGIC;
  signal \counter_reg[2]_i_2_n_7\ : STD_LOGIC;
  signal \counter_reg[32]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[32]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[32]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[32]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[32]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[32]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[32]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[32]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[36]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[36]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[36]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[36]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[36]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[36]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[36]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[36]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[40]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[40]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[40]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[40]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[40]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[40]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[40]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[40]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[44]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[44]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[44]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[44]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[44]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[44]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[44]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[44]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[48]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[48]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[48]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[48]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[48]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \data_out[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[1]_i_2_n_0\ : STD_LOGIC;
  signal empty_INST_0_i_10_n_0 : STD_LOGIC;
  signal empty_INST_0_i_11_n_0 : STD_LOGIC;
  signal empty_INST_0_i_12_n_0 : STD_LOGIC;
  signal empty_INST_0_i_13_n_0 : STD_LOGIC;
  signal empty_INST_0_i_14_n_0 : STD_LOGIC;
  signal empty_INST_0_i_15_n_0 : STD_LOGIC;
  signal empty_INST_0_i_1_n_0 : STD_LOGIC;
  signal empty_INST_0_i_2_n_0 : STD_LOGIC;
  signal empty_INST_0_i_3_n_0 : STD_LOGIC;
  signal empty_INST_0_i_4_n_0 : STD_LOGIC;
  signal empty_INST_0_i_5_n_0 : STD_LOGIC;
  signal empty_INST_0_i_6_n_0 : STD_LOGIC;
  signal empty_INST_0_i_7_n_0 : STD_LOGIC;
  signal empty_INST_0_i_8_n_0 : STD_LOGIC;
  signal empty_INST_0_i_9_n_0 : STD_LOGIC;
  signal \fifo_mem[0][0]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_mem[0][1]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_mem[1][0]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_mem[1][0]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_mem[1][0]_i_3_n_0\ : STD_LOGIC;
  signal \fifo_mem[1][1]_i_10_n_0\ : STD_LOGIC;
  signal \fifo_mem[1][1]_i_11_n_0\ : STD_LOGIC;
  signal \fifo_mem[1][1]_i_12_n_0\ : STD_LOGIC;
  signal \fifo_mem[1][1]_i_13_n_0\ : STD_LOGIC;
  signal \fifo_mem[1][1]_i_14_n_0\ : STD_LOGIC;
  signal \fifo_mem[1][1]_i_15_n_0\ : STD_LOGIC;
  signal \fifo_mem[1][1]_i_16_n_0\ : STD_LOGIC;
  signal \fifo_mem[1][1]_i_17_n_0\ : STD_LOGIC;
  signal \fifo_mem[1][1]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_mem[1][1]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_mem[1][1]_i_3_n_0\ : STD_LOGIC;
  signal \fifo_mem[1][1]_i_4_n_0\ : STD_LOGIC;
  signal \fifo_mem[1][1]_i_5_n_0\ : STD_LOGIC;
  signal \fifo_mem[1][1]_i_6_n_0\ : STD_LOGIC;
  signal \fifo_mem[1][1]_i_7_n_0\ : STD_LOGIC;
  signal \fifo_mem[1][1]_i_8_n_0\ : STD_LOGIC;
  signal \fifo_mem[1][1]_i_9_n_0\ : STD_LOGIC;
  signal \fifo_mem[2][0]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_mem[2][1]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_mem[3][0]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_mem[3][1]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_mem_reg_n_0_[0][0]\ : STD_LOGIC;
  signal \fifo_mem_reg_n_0_[0][1]\ : STD_LOGIC;
  signal \fifo_mem_reg_n_0_[1][0]\ : STD_LOGIC;
  signal \fifo_mem_reg_n_0_[1][1]\ : STD_LOGIC;
  signal \fifo_mem_reg_n_0_[2][0]\ : STD_LOGIC;
  signal \fifo_mem_reg_n_0_[2][1]\ : STD_LOGIC;
  signal \fifo_mem_reg_n_0_[3][0]\ : STD_LOGIC;
  signal \fifo_mem_reg_n_0_[3][1]\ : STD_LOGIC;
  signal half_full_INST_0_i_1_n_0 : STD_LOGIC;
  signal half_full_INST_0_i_2_n_0 : STD_LOGIC;
  signal half_full_INST_0_i_3_n_0 : STD_LOGIC;
  signal half_full_INST_0_i_4_n_0 : STD_LOGIC;
  signal half_full_INST_0_i_5_n_0 : STD_LOGIC;
  signal \ptr_read[0]_i_2_n_0\ : STD_LOGIC;
  signal ptr_read_reg : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \ptr_read_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \ptr_read_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \ptr_read_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal ptr_write : STD_LOGIC;
  signal \ptr_write[0]_i_3_n_0\ : STD_LOGIC;
  signal ptr_write_reg : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \ptr_write_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \ptr_write_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \ptr_write_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \ptr_write_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \ptr_write_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \ptr_write_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \ptr_write_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \ptr_write_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \ptr_write_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \ptr_write_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \ptr_write_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \ptr_write_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \ptr_write_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \ptr_write_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \ptr_write_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \ptr_write_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \ptr_write_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \ptr_write_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \ptr_write_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \ptr_write_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \ptr_write_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \ptr_write_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \ptr_write_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \ptr_write_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \ptr_write_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \ptr_write_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \ptr_write_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \ptr_write_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \ptr_write_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \ptr_write_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \ptr_write_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \ptr_write_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \ptr_write_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \ptr_write_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \ptr_write_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \ptr_write_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \ptr_write_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \ptr_write_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \ptr_write_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \ptr_write_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \ptr_write_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \ptr_write_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \ptr_write_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \ptr_write_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \ptr_write_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \ptr_write_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \ptr_write_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \ptr_write_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \ptr_write_reg[32]_i_1_n_0\ : STD_LOGIC;
  signal \ptr_write_reg[32]_i_1_n_1\ : STD_LOGIC;
  signal \ptr_write_reg[32]_i_1_n_2\ : STD_LOGIC;
  signal \ptr_write_reg[32]_i_1_n_3\ : STD_LOGIC;
  signal \ptr_write_reg[32]_i_1_n_4\ : STD_LOGIC;
  signal \ptr_write_reg[32]_i_1_n_5\ : STD_LOGIC;
  signal \ptr_write_reg[32]_i_1_n_6\ : STD_LOGIC;
  signal \ptr_write_reg[32]_i_1_n_7\ : STD_LOGIC;
  signal \ptr_write_reg[36]_i_1_n_0\ : STD_LOGIC;
  signal \ptr_write_reg[36]_i_1_n_1\ : STD_LOGIC;
  signal \ptr_write_reg[36]_i_1_n_2\ : STD_LOGIC;
  signal \ptr_write_reg[36]_i_1_n_3\ : STD_LOGIC;
  signal \ptr_write_reg[36]_i_1_n_4\ : STD_LOGIC;
  signal \ptr_write_reg[36]_i_1_n_5\ : STD_LOGIC;
  signal \ptr_write_reg[36]_i_1_n_6\ : STD_LOGIC;
  signal \ptr_write_reg[36]_i_1_n_7\ : STD_LOGIC;
  signal \ptr_write_reg[40]_i_1_n_0\ : STD_LOGIC;
  signal \ptr_write_reg[40]_i_1_n_1\ : STD_LOGIC;
  signal \ptr_write_reg[40]_i_1_n_2\ : STD_LOGIC;
  signal \ptr_write_reg[40]_i_1_n_3\ : STD_LOGIC;
  signal \ptr_write_reg[40]_i_1_n_4\ : STD_LOGIC;
  signal \ptr_write_reg[40]_i_1_n_5\ : STD_LOGIC;
  signal \ptr_write_reg[40]_i_1_n_6\ : STD_LOGIC;
  signal \ptr_write_reg[40]_i_1_n_7\ : STD_LOGIC;
  signal \ptr_write_reg[44]_i_1_n_0\ : STD_LOGIC;
  signal \ptr_write_reg[44]_i_1_n_1\ : STD_LOGIC;
  signal \ptr_write_reg[44]_i_1_n_2\ : STD_LOGIC;
  signal \ptr_write_reg[44]_i_1_n_3\ : STD_LOGIC;
  signal \ptr_write_reg[44]_i_1_n_4\ : STD_LOGIC;
  signal \ptr_write_reg[44]_i_1_n_5\ : STD_LOGIC;
  signal \ptr_write_reg[44]_i_1_n_6\ : STD_LOGIC;
  signal \ptr_write_reg[44]_i_1_n_7\ : STD_LOGIC;
  signal \ptr_write_reg[48]_i_1_n_3\ : STD_LOGIC;
  signal \ptr_write_reg[48]_i_1_n_6\ : STD_LOGIC;
  signal \ptr_write_reg[48]_i_1_n_7\ : STD_LOGIC;
  signal \ptr_write_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \ptr_write_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \ptr_write_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \ptr_write_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \ptr_write_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \ptr_write_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \ptr_write_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \ptr_write_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \ptr_write_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \ptr_write_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \ptr_write_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \ptr_write_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \ptr_write_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \ptr_write_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \ptr_write_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \ptr_write_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \ptr_write_reg__0\ : STD_LOGIC_VECTOR ( 49 downto 2 );
  signal \NLW_counter_reg[48]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_counter_reg[48]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_ptr_read_reg[0]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_ptr_read_reg[0]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_ptr_write_reg[48]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_ptr_write_reg[48]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of empty_INST_0 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of empty_INST_0_i_13 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of empty_INST_0_i_15 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of empty_INST_0_i_7 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of empty_INST_0_i_9 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \fifo_mem[1][0]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \fifo_mem[1][1]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \fifo_mem[1][1]_i_5\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of full_INST_0 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of half_full_INST_0 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of half_full_INST_0_i_2 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of half_full_INST_0_i_3 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of half_full_INST_0_i_4 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of half_full_INST_0_i_5 : label is "soft_lutpair3";
begin
  counter(2 downto 0) <= \^counter\(2 downto 0);
\counter[12]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => empty_INST_0_i_1_n_0,
      I1 => \^counter\(2),
      I2 => enable_read,
      I3 => counter_reg(15),
      O => \counter[12]_i_2_n_0\
    );
\counter[12]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => empty_INST_0_i_1_n_0,
      I1 => \^counter\(2),
      I2 => enable_read,
      I3 => counter_reg(14),
      O => \counter[12]_i_3_n_0\
    );
\counter[12]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => empty_INST_0_i_1_n_0,
      I1 => \^counter\(2),
      I2 => enable_read,
      I3 => counter_reg(13),
      O => \counter[12]_i_4_n_0\
    );
\counter[12]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => empty_INST_0_i_1_n_0,
      I1 => \^counter\(2),
      I2 => enable_read,
      I3 => counter_reg(12),
      O => \counter[12]_i_5_n_0\
    );
\counter[16]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => empty_INST_0_i_1_n_0,
      I1 => \^counter\(2),
      I2 => enable_read,
      I3 => counter_reg(19),
      O => \counter[16]_i_2_n_0\
    );
\counter[16]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => empty_INST_0_i_1_n_0,
      I1 => \^counter\(2),
      I2 => enable_read,
      I3 => counter_reg(18),
      O => \counter[16]_i_3_n_0\
    );
\counter[16]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => empty_INST_0_i_1_n_0,
      I1 => \^counter\(2),
      I2 => enable_read,
      I3 => counter_reg(17),
      O => \counter[16]_i_4_n_0\
    );
\counter[16]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => empty_INST_0_i_1_n_0,
      I1 => \^counter\(2),
      I2 => enable_read,
      I3 => counter_reg(16),
      O => \counter[16]_i_5_n_0\
    );
\counter[20]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => empty_INST_0_i_1_n_0,
      I1 => \^counter\(2),
      I2 => enable_read,
      I3 => counter_reg(23),
      O => \counter[20]_i_2_n_0\
    );
\counter[20]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => empty_INST_0_i_1_n_0,
      I1 => \^counter\(2),
      I2 => enable_read,
      I3 => counter_reg(22),
      O => \counter[20]_i_3_n_0\
    );
\counter[20]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => empty_INST_0_i_1_n_0,
      I1 => \^counter\(2),
      I2 => enable_read,
      I3 => counter_reg(21),
      O => \counter[20]_i_4_n_0\
    );
\counter[20]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => empty_INST_0_i_1_n_0,
      I1 => \^counter\(2),
      I2 => enable_read,
      I3 => counter_reg(20),
      O => \counter[20]_i_5_n_0\
    );
\counter[24]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => empty_INST_0_i_1_n_0,
      I1 => \^counter\(2),
      I2 => enable_read,
      I3 => counter_reg(27),
      O => \counter[24]_i_2_n_0\
    );
\counter[24]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => empty_INST_0_i_1_n_0,
      I1 => \^counter\(2),
      I2 => enable_read,
      I3 => counter_reg(26),
      O => \counter[24]_i_3_n_0\
    );
\counter[24]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => empty_INST_0_i_1_n_0,
      I1 => \^counter\(2),
      I2 => enable_read,
      I3 => counter_reg(25),
      O => \counter[24]_i_4_n_0\
    );
\counter[24]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => empty_INST_0_i_1_n_0,
      I1 => \^counter\(2),
      I2 => enable_read,
      I3 => counter_reg(24),
      O => \counter[24]_i_5_n_0\
    );
\counter[28]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => empty_INST_0_i_1_n_0,
      I1 => \^counter\(2),
      I2 => enable_read,
      I3 => counter_reg(31),
      O => \counter[28]_i_2_n_0\
    );
\counter[28]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => empty_INST_0_i_1_n_0,
      I1 => \^counter\(2),
      I2 => enable_read,
      I3 => counter_reg(30),
      O => \counter[28]_i_3_n_0\
    );
\counter[28]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => empty_INST_0_i_1_n_0,
      I1 => \^counter\(2),
      I2 => enable_read,
      I3 => counter_reg(29),
      O => \counter[28]_i_4_n_0\
    );
\counter[28]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => empty_INST_0_i_1_n_0,
      I1 => \^counter\(2),
      I2 => enable_read,
      I3 => counter_reg(28),
      O => \counter[28]_i_5_n_0\
    );
\counter[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F8EC"
    )
        port map (
      I0 => empty_INST_0_i_1_n_0,
      I1 => enable_write,
      I2 => enable_read,
      I3 => \^counter\(2),
      O => \counter[2]_i_1_n_0\
    );
\counter[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FF"
    )
        port map (
      I0 => \counter[2]_i_8_n_0\,
      I1 => \^counter\(2),
      I2 => counter_reg(50),
      I3 => enable_read,
      O => \counter[2]_i_3_n_0\
    );
\counter[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => empty_INST_0_i_1_n_0,
      I1 => \^counter\(2),
      I2 => enable_read,
      I3 => counter_reg(3),
      O => \counter[2]_i_4_n_0\
    );
\counter[2]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2C"
    )
        port map (
      I0 => empty_INST_0_i_1_n_0,
      I1 => \^counter\(2),
      I2 => enable_read,
      O => \counter[2]_i_5_n_0\
    );
\counter[2]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => empty_INST_0_i_1_n_0,
      I1 => \^counter\(2),
      I2 => enable_read,
      I3 => \^counter\(1),
      O => \counter[2]_i_6_n_0\
    );
\counter[2]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => empty_INST_0_i_1_n_0,
      I1 => \^counter\(2),
      I2 => enable_read,
      I3 => \^counter\(0),
      O => \counter[2]_i_7_n_0\
    );
\counter[2]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => empty_INST_0_i_5_n_0,
      I1 => empty_INST_0_i_4_n_0,
      I2 => empty_INST_0_i_3_n_0,
      I3 => half_full_INST_0_i_3_n_0,
      I4 => half_full_INST_0_i_2_n_0,
      I5 => \^counter\(1),
      O => \counter[2]_i_8_n_0\
    );
\counter[32]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => empty_INST_0_i_1_n_0,
      I1 => \^counter\(2),
      I2 => enable_read,
      I3 => counter_reg(35),
      O => \counter[32]_i_2_n_0\
    );
\counter[32]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => empty_INST_0_i_1_n_0,
      I1 => \^counter\(2),
      I2 => enable_read,
      I3 => counter_reg(34),
      O => \counter[32]_i_3_n_0\
    );
\counter[32]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => empty_INST_0_i_1_n_0,
      I1 => \^counter\(2),
      I2 => enable_read,
      I3 => counter_reg(33),
      O => \counter[32]_i_4_n_0\
    );
\counter[32]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => empty_INST_0_i_1_n_0,
      I1 => \^counter\(2),
      I2 => enable_read,
      I3 => counter_reg(32),
      O => \counter[32]_i_5_n_0\
    );
\counter[36]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => empty_INST_0_i_1_n_0,
      I1 => \^counter\(2),
      I2 => enable_read,
      I3 => counter_reg(39),
      O => \counter[36]_i_2_n_0\
    );
\counter[36]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => empty_INST_0_i_1_n_0,
      I1 => \^counter\(2),
      I2 => enable_read,
      I3 => counter_reg(38),
      O => \counter[36]_i_3_n_0\
    );
\counter[36]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => empty_INST_0_i_1_n_0,
      I1 => \^counter\(2),
      I2 => enable_read,
      I3 => counter_reg(37),
      O => \counter[36]_i_4_n_0\
    );
\counter[36]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => empty_INST_0_i_1_n_0,
      I1 => \^counter\(2),
      I2 => enable_read,
      I3 => counter_reg(36),
      O => \counter[36]_i_5_n_0\
    );
\counter[40]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => empty_INST_0_i_1_n_0,
      I1 => \^counter\(2),
      I2 => enable_read,
      I3 => counter_reg(43),
      O => \counter[40]_i_2_n_0\
    );
\counter[40]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => empty_INST_0_i_1_n_0,
      I1 => \^counter\(2),
      I2 => enable_read,
      I3 => counter_reg(42),
      O => \counter[40]_i_3_n_0\
    );
\counter[40]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => empty_INST_0_i_1_n_0,
      I1 => \^counter\(2),
      I2 => enable_read,
      I3 => counter_reg(41),
      O => \counter[40]_i_4_n_0\
    );
\counter[40]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => empty_INST_0_i_1_n_0,
      I1 => \^counter\(2),
      I2 => enable_read,
      I3 => counter_reg(40),
      O => \counter[40]_i_5_n_0\
    );
\counter[44]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => empty_INST_0_i_1_n_0,
      I1 => \^counter\(2),
      I2 => enable_read,
      I3 => counter_reg(47),
      O => \counter[44]_i_2_n_0\
    );
\counter[44]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => empty_INST_0_i_1_n_0,
      I1 => \^counter\(2),
      I2 => enable_read,
      I3 => counter_reg(46),
      O => \counter[44]_i_3_n_0\
    );
\counter[44]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => empty_INST_0_i_1_n_0,
      I1 => \^counter\(2),
      I2 => enable_read,
      I3 => counter_reg(45),
      O => \counter[44]_i_4_n_0\
    );
\counter[44]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => empty_INST_0_i_1_n_0,
      I1 => \^counter\(2),
      I2 => enable_read,
      I3 => counter_reg(44),
      O => \counter[44]_i_5_n_0\
    );
\counter[48]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3C38"
    )
        port map (
      I0 => \^counter\(2),
      I1 => enable_read,
      I2 => counter_reg(50),
      I3 => \counter[2]_i_8_n_0\,
      O => \counter[48]_i_2_n_0\
    );
\counter[48]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => empty_INST_0_i_1_n_0,
      I1 => \^counter\(2),
      I2 => enable_read,
      I3 => counter_reg(49),
      O => \counter[48]_i_3_n_0\
    );
\counter[48]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => empty_INST_0_i_1_n_0,
      I1 => \^counter\(2),
      I2 => enable_read,
      I3 => counter_reg(48),
      O => \counter[48]_i_4_n_0\
    );
\counter[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => empty_INST_0_i_1_n_0,
      I1 => \^counter\(2),
      I2 => enable_read,
      I3 => counter_reg(7),
      O => \counter[4]_i_2_n_0\
    );
\counter[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => empty_INST_0_i_1_n_0,
      I1 => \^counter\(2),
      I2 => enable_read,
      I3 => counter_reg(6),
      O => \counter[4]_i_3_n_0\
    );
\counter[4]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => empty_INST_0_i_1_n_0,
      I1 => \^counter\(2),
      I2 => enable_read,
      I3 => counter_reg(5),
      O => \counter[4]_i_4_n_0\
    );
\counter[4]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => empty_INST_0_i_1_n_0,
      I1 => \^counter\(2),
      I2 => enable_read,
      I3 => counter_reg(4),
      O => \counter[4]_i_5_n_0\
    );
\counter[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => empty_INST_0_i_1_n_0,
      I1 => \^counter\(2),
      I2 => enable_read,
      I3 => counter_reg(11),
      O => \counter[8]_i_2_n_0\
    );
\counter[8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => empty_INST_0_i_1_n_0,
      I1 => \^counter\(2),
      I2 => enable_read,
      I3 => counter_reg(10),
      O => \counter[8]_i_3_n_0\
    );
\counter[8]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => empty_INST_0_i_1_n_0,
      I1 => \^counter\(2),
      I2 => enable_read,
      I3 => counter_reg(9),
      O => \counter[8]_i_4_n_0\
    );
\counter[8]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => empty_INST_0_i_1_n_0,
      I1 => \^counter\(2),
      I2 => enable_read,
      I3 => counter_reg(8),
      O => \counter[8]_i_5_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[2]_i_1_n_0\,
      CLR => reset,
      D => \counter_reg[2]_i_2_n_7\,
      Q => \^counter\(0)
    );
\counter_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[2]_i_1_n_0\,
      CLR => reset,
      D => \counter_reg[8]_i_1_n_5\,
      Q => counter_reg(10)
    );
\counter_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[2]_i_1_n_0\,
      CLR => reset,
      D => \counter_reg[8]_i_1_n_4\,
      Q => counter_reg(11)
    );
\counter_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[2]_i_1_n_0\,
      CLR => reset,
      D => \counter_reg[12]_i_1_n_7\,
      Q => counter_reg(12)
    );
\counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[8]_i_1_n_0\,
      CO(3) => \counter_reg[12]_i_1_n_0\,
      CO(2) => \counter_reg[12]_i_1_n_1\,
      CO(1) => \counter_reg[12]_i_1_n_2\,
      CO(0) => \counter_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => counter_reg(15 downto 12),
      O(3) => \counter_reg[12]_i_1_n_4\,
      O(2) => \counter_reg[12]_i_1_n_5\,
      O(1) => \counter_reg[12]_i_1_n_6\,
      O(0) => \counter_reg[12]_i_1_n_7\,
      S(3) => \counter[12]_i_2_n_0\,
      S(2) => \counter[12]_i_3_n_0\,
      S(1) => \counter[12]_i_4_n_0\,
      S(0) => \counter[12]_i_5_n_0\
    );
\counter_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[2]_i_1_n_0\,
      CLR => reset,
      D => \counter_reg[12]_i_1_n_6\,
      Q => counter_reg(13)
    );
\counter_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[2]_i_1_n_0\,
      CLR => reset,
      D => \counter_reg[12]_i_1_n_5\,
      Q => counter_reg(14)
    );
\counter_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[2]_i_1_n_0\,
      CLR => reset,
      D => \counter_reg[12]_i_1_n_4\,
      Q => counter_reg(15)
    );
\counter_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[2]_i_1_n_0\,
      CLR => reset,
      D => \counter_reg[16]_i_1_n_7\,
      Q => counter_reg(16)
    );
\counter_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[12]_i_1_n_0\,
      CO(3) => \counter_reg[16]_i_1_n_0\,
      CO(2) => \counter_reg[16]_i_1_n_1\,
      CO(1) => \counter_reg[16]_i_1_n_2\,
      CO(0) => \counter_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => counter_reg(19 downto 16),
      O(3) => \counter_reg[16]_i_1_n_4\,
      O(2) => \counter_reg[16]_i_1_n_5\,
      O(1) => \counter_reg[16]_i_1_n_6\,
      O(0) => \counter_reg[16]_i_1_n_7\,
      S(3) => \counter[16]_i_2_n_0\,
      S(2) => \counter[16]_i_3_n_0\,
      S(1) => \counter[16]_i_4_n_0\,
      S(0) => \counter[16]_i_5_n_0\
    );
\counter_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[2]_i_1_n_0\,
      CLR => reset,
      D => \counter_reg[16]_i_1_n_6\,
      Q => counter_reg(17)
    );
\counter_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[2]_i_1_n_0\,
      CLR => reset,
      D => \counter_reg[16]_i_1_n_5\,
      Q => counter_reg(18)
    );
\counter_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[2]_i_1_n_0\,
      CLR => reset,
      D => \counter_reg[16]_i_1_n_4\,
      Q => counter_reg(19)
    );
\counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[2]_i_1_n_0\,
      CLR => reset,
      D => \counter_reg[2]_i_2_n_6\,
      Q => \^counter\(1)
    );
\counter_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[2]_i_1_n_0\,
      CLR => reset,
      D => \counter_reg[20]_i_1_n_7\,
      Q => counter_reg(20)
    );
\counter_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[16]_i_1_n_0\,
      CO(3) => \counter_reg[20]_i_1_n_0\,
      CO(2) => \counter_reg[20]_i_1_n_1\,
      CO(1) => \counter_reg[20]_i_1_n_2\,
      CO(0) => \counter_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => counter_reg(23 downto 20),
      O(3) => \counter_reg[20]_i_1_n_4\,
      O(2) => \counter_reg[20]_i_1_n_5\,
      O(1) => \counter_reg[20]_i_1_n_6\,
      O(0) => \counter_reg[20]_i_1_n_7\,
      S(3) => \counter[20]_i_2_n_0\,
      S(2) => \counter[20]_i_3_n_0\,
      S(1) => \counter[20]_i_4_n_0\,
      S(0) => \counter[20]_i_5_n_0\
    );
\counter_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[2]_i_1_n_0\,
      CLR => reset,
      D => \counter_reg[20]_i_1_n_6\,
      Q => counter_reg(21)
    );
\counter_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[2]_i_1_n_0\,
      CLR => reset,
      D => \counter_reg[20]_i_1_n_5\,
      Q => counter_reg(22)
    );
\counter_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[2]_i_1_n_0\,
      CLR => reset,
      D => \counter_reg[20]_i_1_n_4\,
      Q => counter_reg(23)
    );
\counter_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[2]_i_1_n_0\,
      CLR => reset,
      D => \counter_reg[24]_i_1_n_7\,
      Q => counter_reg(24)
    );
\counter_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[20]_i_1_n_0\,
      CO(3) => \counter_reg[24]_i_1_n_0\,
      CO(2) => \counter_reg[24]_i_1_n_1\,
      CO(1) => \counter_reg[24]_i_1_n_2\,
      CO(0) => \counter_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => counter_reg(27 downto 24),
      O(3) => \counter_reg[24]_i_1_n_4\,
      O(2) => \counter_reg[24]_i_1_n_5\,
      O(1) => \counter_reg[24]_i_1_n_6\,
      O(0) => \counter_reg[24]_i_1_n_7\,
      S(3) => \counter[24]_i_2_n_0\,
      S(2) => \counter[24]_i_3_n_0\,
      S(1) => \counter[24]_i_4_n_0\,
      S(0) => \counter[24]_i_5_n_0\
    );
\counter_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[2]_i_1_n_0\,
      CLR => reset,
      D => \counter_reg[24]_i_1_n_6\,
      Q => counter_reg(25)
    );
\counter_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[2]_i_1_n_0\,
      CLR => reset,
      D => \counter_reg[24]_i_1_n_5\,
      Q => counter_reg(26)
    );
\counter_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[2]_i_1_n_0\,
      CLR => reset,
      D => \counter_reg[24]_i_1_n_4\,
      Q => counter_reg(27)
    );
\counter_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[2]_i_1_n_0\,
      CLR => reset,
      D => \counter_reg[28]_i_1_n_7\,
      Q => counter_reg(28)
    );
\counter_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[24]_i_1_n_0\,
      CO(3) => \counter_reg[28]_i_1_n_0\,
      CO(2) => \counter_reg[28]_i_1_n_1\,
      CO(1) => \counter_reg[28]_i_1_n_2\,
      CO(0) => \counter_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => counter_reg(31 downto 28),
      O(3) => \counter_reg[28]_i_1_n_4\,
      O(2) => \counter_reg[28]_i_1_n_5\,
      O(1) => \counter_reg[28]_i_1_n_6\,
      O(0) => \counter_reg[28]_i_1_n_7\,
      S(3) => \counter[28]_i_2_n_0\,
      S(2) => \counter[28]_i_3_n_0\,
      S(1) => \counter[28]_i_4_n_0\,
      S(0) => \counter[28]_i_5_n_0\
    );
\counter_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[2]_i_1_n_0\,
      CLR => reset,
      D => \counter_reg[28]_i_1_n_6\,
      Q => counter_reg(29)
    );
\counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[2]_i_1_n_0\,
      CLR => reset,
      D => \counter_reg[2]_i_2_n_5\,
      Q => \^counter\(2)
    );
\counter_reg[2]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_reg[2]_i_2_n_0\,
      CO(2) => \counter_reg[2]_i_2_n_1\,
      CO(1) => \counter_reg[2]_i_2_n_2\,
      CO(0) => \counter_reg[2]_i_2_n_3\,
      CYINIT => \counter[2]_i_3_n_0\,
      DI(3) => counter_reg(3),
      DI(2 downto 0) => \^counter\(2 downto 0),
      O(3) => \counter_reg[2]_i_2_n_4\,
      O(2) => \counter_reg[2]_i_2_n_5\,
      O(1) => \counter_reg[2]_i_2_n_6\,
      O(0) => \counter_reg[2]_i_2_n_7\,
      S(3) => \counter[2]_i_4_n_0\,
      S(2) => \counter[2]_i_5_n_0\,
      S(1) => \counter[2]_i_6_n_0\,
      S(0) => \counter[2]_i_7_n_0\
    );
\counter_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[2]_i_1_n_0\,
      CLR => reset,
      D => \counter_reg[28]_i_1_n_5\,
      Q => counter_reg(30)
    );
\counter_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[2]_i_1_n_0\,
      CLR => reset,
      D => \counter_reg[28]_i_1_n_4\,
      Q => counter_reg(31)
    );
\counter_reg[32]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[2]_i_1_n_0\,
      CLR => reset,
      D => \counter_reg[32]_i_1_n_7\,
      Q => counter_reg(32)
    );
\counter_reg[32]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[28]_i_1_n_0\,
      CO(3) => \counter_reg[32]_i_1_n_0\,
      CO(2) => \counter_reg[32]_i_1_n_1\,
      CO(1) => \counter_reg[32]_i_1_n_2\,
      CO(0) => \counter_reg[32]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => counter_reg(35 downto 32),
      O(3) => \counter_reg[32]_i_1_n_4\,
      O(2) => \counter_reg[32]_i_1_n_5\,
      O(1) => \counter_reg[32]_i_1_n_6\,
      O(0) => \counter_reg[32]_i_1_n_7\,
      S(3) => \counter[32]_i_2_n_0\,
      S(2) => \counter[32]_i_3_n_0\,
      S(1) => \counter[32]_i_4_n_0\,
      S(0) => \counter[32]_i_5_n_0\
    );
\counter_reg[33]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[2]_i_1_n_0\,
      CLR => reset,
      D => \counter_reg[32]_i_1_n_6\,
      Q => counter_reg(33)
    );
\counter_reg[34]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[2]_i_1_n_0\,
      CLR => reset,
      D => \counter_reg[32]_i_1_n_5\,
      Q => counter_reg(34)
    );
\counter_reg[35]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[2]_i_1_n_0\,
      CLR => reset,
      D => \counter_reg[32]_i_1_n_4\,
      Q => counter_reg(35)
    );
\counter_reg[36]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[2]_i_1_n_0\,
      CLR => reset,
      D => \counter_reg[36]_i_1_n_7\,
      Q => counter_reg(36)
    );
\counter_reg[36]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[32]_i_1_n_0\,
      CO(3) => \counter_reg[36]_i_1_n_0\,
      CO(2) => \counter_reg[36]_i_1_n_1\,
      CO(1) => \counter_reg[36]_i_1_n_2\,
      CO(0) => \counter_reg[36]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => counter_reg(39 downto 36),
      O(3) => \counter_reg[36]_i_1_n_4\,
      O(2) => \counter_reg[36]_i_1_n_5\,
      O(1) => \counter_reg[36]_i_1_n_6\,
      O(0) => \counter_reg[36]_i_1_n_7\,
      S(3) => \counter[36]_i_2_n_0\,
      S(2) => \counter[36]_i_3_n_0\,
      S(1) => \counter[36]_i_4_n_0\,
      S(0) => \counter[36]_i_5_n_0\
    );
\counter_reg[37]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[2]_i_1_n_0\,
      CLR => reset,
      D => \counter_reg[36]_i_1_n_6\,
      Q => counter_reg(37)
    );
\counter_reg[38]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[2]_i_1_n_0\,
      CLR => reset,
      D => \counter_reg[36]_i_1_n_5\,
      Q => counter_reg(38)
    );
\counter_reg[39]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[2]_i_1_n_0\,
      CLR => reset,
      D => \counter_reg[36]_i_1_n_4\,
      Q => counter_reg(39)
    );
\counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[2]_i_1_n_0\,
      CLR => reset,
      D => \counter_reg[2]_i_2_n_4\,
      Q => counter_reg(3)
    );
\counter_reg[40]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[2]_i_1_n_0\,
      CLR => reset,
      D => \counter_reg[40]_i_1_n_7\,
      Q => counter_reg(40)
    );
\counter_reg[40]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[36]_i_1_n_0\,
      CO(3) => \counter_reg[40]_i_1_n_0\,
      CO(2) => \counter_reg[40]_i_1_n_1\,
      CO(1) => \counter_reg[40]_i_1_n_2\,
      CO(0) => \counter_reg[40]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => counter_reg(43 downto 40),
      O(3) => \counter_reg[40]_i_1_n_4\,
      O(2) => \counter_reg[40]_i_1_n_5\,
      O(1) => \counter_reg[40]_i_1_n_6\,
      O(0) => \counter_reg[40]_i_1_n_7\,
      S(3) => \counter[40]_i_2_n_0\,
      S(2) => \counter[40]_i_3_n_0\,
      S(1) => \counter[40]_i_4_n_0\,
      S(0) => \counter[40]_i_5_n_0\
    );
\counter_reg[41]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[2]_i_1_n_0\,
      CLR => reset,
      D => \counter_reg[40]_i_1_n_6\,
      Q => counter_reg(41)
    );
\counter_reg[42]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[2]_i_1_n_0\,
      CLR => reset,
      D => \counter_reg[40]_i_1_n_5\,
      Q => counter_reg(42)
    );
\counter_reg[43]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[2]_i_1_n_0\,
      CLR => reset,
      D => \counter_reg[40]_i_1_n_4\,
      Q => counter_reg(43)
    );
\counter_reg[44]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[2]_i_1_n_0\,
      CLR => reset,
      D => \counter_reg[44]_i_1_n_7\,
      Q => counter_reg(44)
    );
\counter_reg[44]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[40]_i_1_n_0\,
      CO(3) => \counter_reg[44]_i_1_n_0\,
      CO(2) => \counter_reg[44]_i_1_n_1\,
      CO(1) => \counter_reg[44]_i_1_n_2\,
      CO(0) => \counter_reg[44]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => counter_reg(47 downto 44),
      O(3) => \counter_reg[44]_i_1_n_4\,
      O(2) => \counter_reg[44]_i_1_n_5\,
      O(1) => \counter_reg[44]_i_1_n_6\,
      O(0) => \counter_reg[44]_i_1_n_7\,
      S(3) => \counter[44]_i_2_n_0\,
      S(2) => \counter[44]_i_3_n_0\,
      S(1) => \counter[44]_i_4_n_0\,
      S(0) => \counter[44]_i_5_n_0\
    );
\counter_reg[45]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[2]_i_1_n_0\,
      CLR => reset,
      D => \counter_reg[44]_i_1_n_6\,
      Q => counter_reg(45)
    );
\counter_reg[46]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[2]_i_1_n_0\,
      CLR => reset,
      D => \counter_reg[44]_i_1_n_5\,
      Q => counter_reg(46)
    );
\counter_reg[47]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[2]_i_1_n_0\,
      CLR => reset,
      D => \counter_reg[44]_i_1_n_4\,
      Q => counter_reg(47)
    );
\counter_reg[48]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[2]_i_1_n_0\,
      CLR => reset,
      D => \counter_reg[48]_i_1_n_7\,
      Q => counter_reg(48)
    );
\counter_reg[48]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[44]_i_1_n_0\,
      CO(3 downto 2) => \NLW_counter_reg[48]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \counter_reg[48]_i_1_n_2\,
      CO(0) => \counter_reg[48]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => counter_reg(49 downto 48),
      O(3) => \NLW_counter_reg[48]_i_1_O_UNCONNECTED\(3),
      O(2) => \counter_reg[48]_i_1_n_5\,
      O(1) => \counter_reg[48]_i_1_n_6\,
      O(0) => \counter_reg[48]_i_1_n_7\,
      S(3) => '0',
      S(2) => \counter[48]_i_2_n_0\,
      S(1) => \counter[48]_i_3_n_0\,
      S(0) => \counter[48]_i_4_n_0\
    );
\counter_reg[49]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[2]_i_1_n_0\,
      CLR => reset,
      D => \counter_reg[48]_i_1_n_6\,
      Q => counter_reg(49)
    );
\counter_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[2]_i_1_n_0\,
      CLR => reset,
      D => \counter_reg[4]_i_1_n_7\,
      Q => counter_reg(4)
    );
\counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[2]_i_2_n_0\,
      CO(3) => \counter_reg[4]_i_1_n_0\,
      CO(2) => \counter_reg[4]_i_1_n_1\,
      CO(1) => \counter_reg[4]_i_1_n_2\,
      CO(0) => \counter_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => counter_reg(7 downto 4),
      O(3) => \counter_reg[4]_i_1_n_4\,
      O(2) => \counter_reg[4]_i_1_n_5\,
      O(1) => \counter_reg[4]_i_1_n_6\,
      O(0) => \counter_reg[4]_i_1_n_7\,
      S(3) => \counter[4]_i_2_n_0\,
      S(2) => \counter[4]_i_3_n_0\,
      S(1) => \counter[4]_i_4_n_0\,
      S(0) => \counter[4]_i_5_n_0\
    );
\counter_reg[50]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[2]_i_1_n_0\,
      CLR => reset,
      D => \counter_reg[48]_i_1_n_5\,
      Q => counter_reg(50)
    );
\counter_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[2]_i_1_n_0\,
      CLR => reset,
      D => \counter_reg[4]_i_1_n_6\,
      Q => counter_reg(5)
    );
\counter_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[2]_i_1_n_0\,
      CLR => reset,
      D => \counter_reg[4]_i_1_n_5\,
      Q => counter_reg(6)
    );
\counter_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[2]_i_1_n_0\,
      CLR => reset,
      D => \counter_reg[4]_i_1_n_4\,
      Q => counter_reg(7)
    );
\counter_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[2]_i_1_n_0\,
      CLR => reset,
      D => \counter_reg[8]_i_1_n_7\,
      Q => counter_reg(8)
    );
\counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[4]_i_1_n_0\,
      CO(3) => \counter_reg[8]_i_1_n_0\,
      CO(2) => \counter_reg[8]_i_1_n_1\,
      CO(1) => \counter_reg[8]_i_1_n_2\,
      CO(0) => \counter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => counter_reg(11 downto 8),
      O(3) => \counter_reg[8]_i_1_n_4\,
      O(2) => \counter_reg[8]_i_1_n_5\,
      O(1) => \counter_reg[8]_i_1_n_6\,
      O(0) => \counter_reg[8]_i_1_n_7\,
      S(3) => \counter[8]_i_2_n_0\,
      S(2) => \counter[8]_i_3_n_0\,
      S(1) => \counter[8]_i_4_n_0\,
      S(0) => \counter[8]_i_5_n_0\
    );
\counter_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \counter[2]_i_1_n_0\,
      CLR => reset,
      D => \counter_reg[8]_i_1_n_6\,
      Q => counter_reg(9)
    );
\data_out[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFCFAFA0C0C0AFA0"
    )
        port map (
      I0 => \fifo_mem_reg_n_0_[2][0]\,
      I1 => \fifo_mem_reg_n_0_[3][0]\,
      I2 => ptr_read_reg(1),
      I3 => \fifo_mem_reg_n_0_[0][0]\,
      I4 => ptr_read_reg(0),
      I5 => \fifo_mem_reg_n_0_[1][0]\,
      O => \data_out[0]_i_1_n_0\
    );
\data_out[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => empty_INST_0_i_1_n_0,
      I1 => \^counter\(2),
      I2 => enable_read,
      O => counter1
    );
\data_out[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFCFAFA0C0C0AFA0"
    )
        port map (
      I0 => \fifo_mem_reg_n_0_[2][1]\,
      I1 => \fifo_mem_reg_n_0_[3][1]\,
      I2 => ptr_read_reg(1),
      I3 => \fifo_mem_reg_n_0_[0][1]\,
      I4 => ptr_read_reg(0),
      I5 => \fifo_mem_reg_n_0_[1][1]\,
      O => \data_out[1]_i_2_n_0\
    );
\data_out_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => counter1,
      CLR => reset,
      D => \data_out[0]_i_1_n_0\,
      Q => data_out(0)
    );
\data_out_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => counter1,
      CLR => reset,
      D => \data_out[1]_i_2_n_0\,
      Q => data_out(1)
    );
empty_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => empty_INST_0_i_1_n_0,
      I1 => \^counter\(2),
      O => empty
    );
empty_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \^counter\(1),
      I1 => empty_INST_0_i_2_n_0,
      I2 => empty_INST_0_i_3_n_0,
      I3 => empty_INST_0_i_4_n_0,
      I4 => empty_INST_0_i_5_n_0,
      I5 => counter_reg(50),
      O => empty_INST_0_i_1_n_0
    );
empty_INST_0_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => counter_reg(23),
      I1 => counter_reg(22),
      I2 => counter_reg(25),
      I3 => counter_reg(24),
      O => empty_INST_0_i_10_n_0
    );
empty_INST_0_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => counter_reg(31),
      I1 => counter_reg(30),
      I2 => counter_reg(33),
      I3 => counter_reg(32),
      O => empty_INST_0_i_11_n_0
    );
empty_INST_0_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => counter_reg(7),
      I1 => counter_reg(6),
      I2 => counter_reg(9),
      I3 => counter_reg(8),
      O => empty_INST_0_i_12_n_0
    );
empty_INST_0_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => counter_reg(3),
      I1 => \^counter\(0),
      I2 => counter_reg(5),
      I3 => counter_reg(4),
      O => empty_INST_0_i_13_n_0
    );
empty_INST_0_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => counter_reg(15),
      I1 => counter_reg(14),
      I2 => counter_reg(17),
      I3 => counter_reg(16),
      O => empty_INST_0_i_14_n_0
    );
empty_INST_0_i_15: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => counter_reg(11),
      I1 => counter_reg(10),
      I2 => counter_reg(13),
      I3 => counter_reg(12),
      O => empty_INST_0_i_15_n_0
    );
empty_INST_0_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => empty_INST_0_i_6_n_0,
      I1 => empty_INST_0_i_7_n_0,
      I2 => empty_INST_0_i_8_n_0,
      I3 => empty_INST_0_i_9_n_0,
      O => empty_INST_0_i_2_n_0
    );
empty_INST_0_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => counter_reg(20),
      I1 => counter_reg(21),
      I2 => counter_reg(18),
      I3 => counter_reg(19),
      I4 => empty_INST_0_i_10_n_0,
      O => empty_INST_0_i_3_n_0
    );
empty_INST_0_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => counter_reg(28),
      I1 => counter_reg(29),
      I2 => counter_reg(26),
      I3 => counter_reg(27),
      I4 => empty_INST_0_i_11_n_0,
      O => empty_INST_0_i_4_n_0
    );
empty_INST_0_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => empty_INST_0_i_12_n_0,
      I1 => empty_INST_0_i_13_n_0,
      I2 => empty_INST_0_i_14_n_0,
      I3 => empty_INST_0_i_15_n_0,
      O => empty_INST_0_i_5_n_0
    );
empty_INST_0_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => counter_reg(39),
      I1 => counter_reg(38),
      I2 => counter_reg(41),
      I3 => counter_reg(40),
      O => empty_INST_0_i_6_n_0
    );
empty_INST_0_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => counter_reg(35),
      I1 => counter_reg(34),
      I2 => counter_reg(37),
      I3 => counter_reg(36),
      O => empty_INST_0_i_7_n_0
    );
empty_INST_0_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => counter_reg(47),
      I1 => counter_reg(46),
      I2 => counter_reg(49),
      I3 => counter_reg(48),
      O => empty_INST_0_i_8_n_0
    );
empty_INST_0_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => counter_reg(43),
      I1 => counter_reg(42),
      I2 => counter_reg(45),
      I3 => counter_reg(44),
      O => empty_INST_0_i_9_n_0
    );
\fifo_mem[0][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0200"
    )
        port map (
      I0 => \fifo_mem[1][0]_i_2_n_0\,
      I1 => ptr_write_reg(1),
      I2 => ptr_write_reg(0),
      I3 => \fifo_mem[1][1]_i_3_n_0\,
      I4 => \fifo_mem_reg_n_0_[0][0]\,
      O => \fifo_mem[0][0]_i_1_n_0\
    );
\fifo_mem[0][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0200"
    )
        port map (
      I0 => \fifo_mem[1][1]_i_2_n_0\,
      I1 => ptr_write_reg(1),
      I2 => ptr_write_reg(0),
      I3 => \fifo_mem[1][1]_i_3_n_0\,
      I4 => \fifo_mem_reg_n_0_[0][1]\,
      O => \fifo_mem[0][1]_i_1_n_0\
    );
\fifo_mem[1][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => \fifo_mem[1][0]_i_2_n_0\,
      I1 => ptr_write_reg(1),
      I2 => ptr_write_reg(0),
      I3 => \fifo_mem[1][1]_i_3_n_0\,
      I4 => \fifo_mem_reg_n_0_[1][0]\,
      O => \fifo_mem[1][0]_i_1_n_0\
    );
\fifo_mem[1][0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACACCCC"
    )
        port map (
      I0 => data_in(0),
      I1 => \fifo_mem[1][0]_i_3_n_0\,
      I2 => \^counter\(2),
      I3 => empty_INST_0_i_1_n_0,
      I4 => enable_write,
      O => \fifo_mem[1][0]_i_2_n_0\
    );
\fifo_mem[1][0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_mem_reg_n_0_[3][0]\,
      I1 => \fifo_mem_reg_n_0_[1][0]\,
      I2 => ptr_write_reg(0),
      I3 => \fifo_mem_reg_n_0_[2][0]\,
      I4 => ptr_write_reg(1),
      I5 => \fifo_mem_reg_n_0_[0][0]\,
      O => \fifo_mem[1][0]_i_3_n_0\
    );
\fifo_mem[1][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => \fifo_mem[1][1]_i_2_n_0\,
      I1 => ptr_write_reg(1),
      I2 => ptr_write_reg(0),
      I3 => \fifo_mem[1][1]_i_3_n_0\,
      I4 => \fifo_mem_reg_n_0_[1][1]\,
      O => \fifo_mem[1][1]_i_1_n_0\
    );
\fifo_mem[1][1]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => \ptr_write_reg__0\(34),
      I1 => \ptr_write_reg__0\(35),
      I2 => \ptr_write_reg__0\(36),
      I3 => \ptr_write_reg__0\(37),
      I4 => \fifo_mem[1][1]_i_15_n_0\,
      O => \fifo_mem[1][1]_i_10_n_0\
    );
\fifo_mem[1][1]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \ptr_write_reg__0\(33),
      I1 => \ptr_write_reg__0\(32),
      I2 => \ptr_write_reg__0\(31),
      I3 => \ptr_write_reg__0\(30),
      O => \fifo_mem[1][1]_i_11_n_0\
    );
\fifo_mem[1][1]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => \ptr_write_reg__0\(18),
      I1 => \ptr_write_reg__0\(19),
      I2 => \ptr_write_reg__0\(20),
      I3 => \ptr_write_reg__0\(21),
      I4 => \fifo_mem[1][1]_i_16_n_0\,
      O => \fifo_mem[1][1]_i_12_n_0\
    );
\fifo_mem[1][1]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \ptr_write_reg__0\(17),
      I1 => \ptr_write_reg__0\(16),
      I2 => \ptr_write_reg__0\(15),
      I3 => \ptr_write_reg__0\(14),
      O => \fifo_mem[1][1]_i_13_n_0\
    );
\fifo_mem[1][1]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => \ptr_write_reg__0\(2),
      I1 => \ptr_write_reg__0\(3),
      I2 => \ptr_write_reg__0\(4),
      I3 => \ptr_write_reg__0\(5),
      I4 => \fifo_mem[1][1]_i_17_n_0\,
      O => \fifo_mem[1][1]_i_14_n_0\
    );
\fifo_mem[1][1]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \ptr_write_reg__0\(41),
      I1 => \ptr_write_reg__0\(40),
      I2 => \ptr_write_reg__0\(39),
      I3 => \ptr_write_reg__0\(38),
      O => \fifo_mem[1][1]_i_15_n_0\
    );
\fifo_mem[1][1]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \ptr_write_reg__0\(25),
      I1 => \ptr_write_reg__0\(24),
      I2 => \ptr_write_reg__0\(23),
      I3 => \ptr_write_reg__0\(22),
      O => \fifo_mem[1][1]_i_16_n_0\
    );
\fifo_mem[1][1]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \ptr_write_reg__0\(9),
      I1 => \ptr_write_reg__0\(8),
      I2 => \ptr_write_reg__0\(7),
      I3 => \ptr_write_reg__0\(6),
      O => \fifo_mem[1][1]_i_17_n_0\
    );
\fifo_mem[1][1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACACCCC"
    )
        port map (
      I0 => data_in(1),
      I1 => \fifo_mem[1][1]_i_4_n_0\,
      I2 => \^counter\(2),
      I3 => empty_INST_0_i_1_n_0,
      I4 => enable_write,
      O => \fifo_mem[1][1]_i_2_n_0\
    );
\fifo_mem[1][1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F00000000000000"
    )
        port map (
      I0 => \counter[2]_i_8_n_0\,
      I1 => \fifo_mem[1][1]_i_5_n_0\,
      I2 => enable_read,
      I3 => \fifo_mem[1][1]_i_6_n_0\,
      I4 => \fifo_mem[1][1]_i_7_n_0\,
      I5 => \fifo_mem[1][1]_i_8_n_0\,
      O => \fifo_mem[1][1]_i_3_n_0\
    );
\fifo_mem[1][1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \fifo_mem_reg_n_0_[3][1]\,
      I1 => \fifo_mem_reg_n_0_[1][1]\,
      I2 => ptr_write_reg(0),
      I3 => \fifo_mem_reg_n_0_[2][1]\,
      I4 => ptr_write_reg(1),
      I5 => \fifo_mem_reg_n_0_[0][1]\,
      O => \fifo_mem[1][1]_i_4_n_0\
    );
\fifo_mem[1][1]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter\(2),
      I1 => counter_reg(50),
      O => \fifo_mem[1][1]_i_5_n_0\
    );
\fifo_mem[1][1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => \fifo_mem[1][1]_i_9_n_0\,
      I1 => \ptr_write_reg__0\(45),
      I2 => \ptr_write_reg__0\(44),
      I3 => \ptr_write_reg__0\(43),
      I4 => \ptr_write_reg__0\(42),
      I5 => \fifo_mem[1][1]_i_10_n_0\,
      O => \fifo_mem[1][1]_i_6_n_0\
    );
\fifo_mem[1][1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => \fifo_mem[1][1]_i_11_n_0\,
      I1 => \ptr_write_reg__0\(29),
      I2 => \ptr_write_reg__0\(28),
      I3 => \ptr_write_reg__0\(27),
      I4 => \ptr_write_reg__0\(26),
      I5 => \fifo_mem[1][1]_i_12_n_0\,
      O => \fifo_mem[1][1]_i_7_n_0\
    );
\fifo_mem[1][1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => \fifo_mem[1][1]_i_13_n_0\,
      I1 => \ptr_write_reg__0\(13),
      I2 => \ptr_write_reg__0\(12),
      I3 => \ptr_write_reg__0\(11),
      I4 => \ptr_write_reg__0\(10),
      I5 => \fifo_mem[1][1]_i_14_n_0\,
      O => \fifo_mem[1][1]_i_8_n_0\
    );
\fifo_mem[1][1]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \ptr_write_reg__0\(49),
      I1 => \ptr_write_reg__0\(48),
      I2 => \ptr_write_reg__0\(47),
      I3 => \ptr_write_reg__0\(46),
      O => \fifo_mem[1][1]_i_9_n_0\
    );
\fifo_mem[2][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => \fifo_mem[1][0]_i_2_n_0\,
      I1 => ptr_write_reg(0),
      I2 => ptr_write_reg(1),
      I3 => \fifo_mem[1][1]_i_3_n_0\,
      I4 => \fifo_mem_reg_n_0_[2][0]\,
      O => \fifo_mem[2][0]_i_1_n_0\
    );
\fifo_mem[2][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => \fifo_mem[1][1]_i_2_n_0\,
      I1 => ptr_write_reg(0),
      I2 => ptr_write_reg(1),
      I3 => \fifo_mem[1][1]_i_3_n_0\,
      I4 => \fifo_mem_reg_n_0_[2][1]\,
      O => \fifo_mem[2][1]_i_1_n_0\
    );
\fifo_mem[3][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => \fifo_mem[1][0]_i_2_n_0\,
      I1 => ptr_write_reg(1),
      I2 => ptr_write_reg(0),
      I3 => \fifo_mem[1][1]_i_3_n_0\,
      I4 => \fifo_mem_reg_n_0_[3][0]\,
      O => \fifo_mem[3][0]_i_1_n_0\
    );
\fifo_mem[3][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => \fifo_mem[1][1]_i_2_n_0\,
      I1 => ptr_write_reg(1),
      I2 => ptr_write_reg(0),
      I3 => \fifo_mem[1][1]_i_3_n_0\,
      I4 => \fifo_mem_reg_n_0_[3][1]\,
      O => \fifo_mem[3][1]_i_1_n_0\
    );
\fifo_mem_reg[0][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \fifo_mem[0][0]_i_1_n_0\,
      Q => \fifo_mem_reg_n_0_[0][0]\
    );
\fifo_mem_reg[0][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \fifo_mem[0][1]_i_1_n_0\,
      Q => \fifo_mem_reg_n_0_[0][1]\
    );
\fifo_mem_reg[1][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \fifo_mem[1][0]_i_1_n_0\,
      Q => \fifo_mem_reg_n_0_[1][0]\
    );
\fifo_mem_reg[1][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \fifo_mem[1][1]_i_1_n_0\,
      Q => \fifo_mem_reg_n_0_[1][1]\
    );
\fifo_mem_reg[2][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \fifo_mem[2][0]_i_1_n_0\,
      Q => \fifo_mem_reg_n_0_[2][0]\
    );
\fifo_mem_reg[2][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \fifo_mem[2][1]_i_1_n_0\,
      Q => \fifo_mem_reg_n_0_[2][1]\
    );
\fifo_mem_reg[3][0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \fifo_mem[3][0]_i_1_n_0\,
      Q => \fifo_mem_reg_n_0_[3][0]\
    );
\fifo_mem_reg[3][1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \fifo_mem[3][1]_i_1_n_0\,
      Q => \fifo_mem_reg_n_0_[3][1]\
    );
full_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => empty_INST_0_i_1_n_0,
      I1 => \^counter\(2),
      O => full
    );
half_full_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \^counter\(1),
      I1 => \^counter\(2),
      I2 => counter_reg(50),
      I3 => half_full_INST_0_i_1_n_0,
      O => half_full
    );
half_full_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => half_full_INST_0_i_2_n_0,
      I1 => half_full_INST_0_i_3_n_0,
      I2 => empty_INST_0_i_3_n_0,
      I3 => empty_INST_0_i_4_n_0,
      I4 => half_full_INST_0_i_4_n_0,
      I5 => half_full_INST_0_i_5_n_0,
      O => half_full_INST_0_i_1_n_0
    );
half_full_INST_0_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => counter_reg(36),
      I1 => counter_reg(37),
      I2 => counter_reg(34),
      I3 => counter_reg(35),
      I4 => empty_INST_0_i_6_n_0,
      O => half_full_INST_0_i_2_n_0
    );
half_full_INST_0_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => counter_reg(44),
      I1 => counter_reg(45),
      I2 => counter_reg(42),
      I3 => counter_reg(43),
      I4 => empty_INST_0_i_8_n_0,
      O => half_full_INST_0_i_3_n_0
    );
half_full_INST_0_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => counter_reg(12),
      I1 => counter_reg(13),
      I2 => counter_reg(10),
      I3 => counter_reg(11),
      I4 => empty_INST_0_i_14_n_0,
      O => half_full_INST_0_i_4_n_0
    );
half_full_INST_0_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => counter_reg(4),
      I1 => counter_reg(5),
      I2 => \^counter\(0),
      I3 => counter_reg(3),
      I4 => empty_INST_0_i_12_n_0,
      O => half_full_INST_0_i_5_n_0
    );
\ptr_read[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ptr_read_reg(0),
      O => \ptr_read[0]_i_2_n_0\
    );
\ptr_read_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => counter1,
      CLR => reset,
      D => \ptr_read_reg[0]_i_1_n_7\,
      Q => ptr_read_reg(0)
    );
\ptr_read_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 1) => \NLW_ptr_read_reg[0]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \ptr_read_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3 downto 2) => \NLW_ptr_read_reg[0]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1) => \ptr_read_reg[0]_i_1_n_6\,
      O(0) => \ptr_read_reg[0]_i_1_n_7\,
      S(3 downto 2) => B"00",
      S(1) => ptr_read_reg(1),
      S(0) => \ptr_read[0]_i_2_n_0\
    );
\ptr_read_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => counter1,
      CLR => reset,
      D => \ptr_read_reg[0]_i_1_n_6\,
      Q => ptr_read_reg(1)
    );
\ptr_write[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0C44"
    )
        port map (
      I0 => \^counter\(2),
      I1 => enable_write,
      I2 => enable_read,
      I3 => empty_INST_0_i_1_n_0,
      O => ptr_write
    );
\ptr_write[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ptr_write_reg(0),
      O => \ptr_write[0]_i_3_n_0\
    );
\ptr_write_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ptr_write,
      CLR => reset,
      D => \ptr_write_reg[0]_i_2_n_7\,
      Q => ptr_write_reg(0)
    );
\ptr_write_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ptr_write_reg[0]_i_2_n_0\,
      CO(2) => \ptr_write_reg[0]_i_2_n_1\,
      CO(1) => \ptr_write_reg[0]_i_2_n_2\,
      CO(0) => \ptr_write_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \ptr_write_reg[0]_i_2_n_4\,
      O(2) => \ptr_write_reg[0]_i_2_n_5\,
      O(1) => \ptr_write_reg[0]_i_2_n_6\,
      O(0) => \ptr_write_reg[0]_i_2_n_7\,
      S(3 downto 2) => \ptr_write_reg__0\(3 downto 2),
      S(1) => ptr_write_reg(1),
      S(0) => \ptr_write[0]_i_3_n_0\
    );
\ptr_write_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ptr_write,
      CLR => reset,
      D => \ptr_write_reg[8]_i_1_n_5\,
      Q => \ptr_write_reg__0\(10)
    );
\ptr_write_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ptr_write,
      CLR => reset,
      D => \ptr_write_reg[8]_i_1_n_4\,
      Q => \ptr_write_reg__0\(11)
    );
\ptr_write_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ptr_write,
      CLR => reset,
      D => \ptr_write_reg[12]_i_1_n_7\,
      Q => \ptr_write_reg__0\(12)
    );
\ptr_write_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ptr_write_reg[8]_i_1_n_0\,
      CO(3) => \ptr_write_reg[12]_i_1_n_0\,
      CO(2) => \ptr_write_reg[12]_i_1_n_1\,
      CO(1) => \ptr_write_reg[12]_i_1_n_2\,
      CO(0) => \ptr_write_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ptr_write_reg[12]_i_1_n_4\,
      O(2) => \ptr_write_reg[12]_i_1_n_5\,
      O(1) => \ptr_write_reg[12]_i_1_n_6\,
      O(0) => \ptr_write_reg[12]_i_1_n_7\,
      S(3 downto 0) => \ptr_write_reg__0\(15 downto 12)
    );
\ptr_write_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ptr_write,
      CLR => reset,
      D => \ptr_write_reg[12]_i_1_n_6\,
      Q => \ptr_write_reg__0\(13)
    );
\ptr_write_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ptr_write,
      CLR => reset,
      D => \ptr_write_reg[12]_i_1_n_5\,
      Q => \ptr_write_reg__0\(14)
    );
\ptr_write_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ptr_write,
      CLR => reset,
      D => \ptr_write_reg[12]_i_1_n_4\,
      Q => \ptr_write_reg__0\(15)
    );
\ptr_write_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ptr_write,
      CLR => reset,
      D => \ptr_write_reg[16]_i_1_n_7\,
      Q => \ptr_write_reg__0\(16)
    );
\ptr_write_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ptr_write_reg[12]_i_1_n_0\,
      CO(3) => \ptr_write_reg[16]_i_1_n_0\,
      CO(2) => \ptr_write_reg[16]_i_1_n_1\,
      CO(1) => \ptr_write_reg[16]_i_1_n_2\,
      CO(0) => \ptr_write_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ptr_write_reg[16]_i_1_n_4\,
      O(2) => \ptr_write_reg[16]_i_1_n_5\,
      O(1) => \ptr_write_reg[16]_i_1_n_6\,
      O(0) => \ptr_write_reg[16]_i_1_n_7\,
      S(3 downto 0) => \ptr_write_reg__0\(19 downto 16)
    );
\ptr_write_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ptr_write,
      CLR => reset,
      D => \ptr_write_reg[16]_i_1_n_6\,
      Q => \ptr_write_reg__0\(17)
    );
\ptr_write_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ptr_write,
      CLR => reset,
      D => \ptr_write_reg[16]_i_1_n_5\,
      Q => \ptr_write_reg__0\(18)
    );
\ptr_write_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ptr_write,
      CLR => reset,
      D => \ptr_write_reg[16]_i_1_n_4\,
      Q => \ptr_write_reg__0\(19)
    );
\ptr_write_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ptr_write,
      CLR => reset,
      D => \ptr_write_reg[0]_i_2_n_6\,
      Q => ptr_write_reg(1)
    );
\ptr_write_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ptr_write,
      CLR => reset,
      D => \ptr_write_reg[20]_i_1_n_7\,
      Q => \ptr_write_reg__0\(20)
    );
\ptr_write_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ptr_write_reg[16]_i_1_n_0\,
      CO(3) => \ptr_write_reg[20]_i_1_n_0\,
      CO(2) => \ptr_write_reg[20]_i_1_n_1\,
      CO(1) => \ptr_write_reg[20]_i_1_n_2\,
      CO(0) => \ptr_write_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ptr_write_reg[20]_i_1_n_4\,
      O(2) => \ptr_write_reg[20]_i_1_n_5\,
      O(1) => \ptr_write_reg[20]_i_1_n_6\,
      O(0) => \ptr_write_reg[20]_i_1_n_7\,
      S(3 downto 0) => \ptr_write_reg__0\(23 downto 20)
    );
\ptr_write_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ptr_write,
      CLR => reset,
      D => \ptr_write_reg[20]_i_1_n_6\,
      Q => \ptr_write_reg__0\(21)
    );
\ptr_write_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ptr_write,
      CLR => reset,
      D => \ptr_write_reg[20]_i_1_n_5\,
      Q => \ptr_write_reg__0\(22)
    );
\ptr_write_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ptr_write,
      CLR => reset,
      D => \ptr_write_reg[20]_i_1_n_4\,
      Q => \ptr_write_reg__0\(23)
    );
\ptr_write_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ptr_write,
      CLR => reset,
      D => \ptr_write_reg[24]_i_1_n_7\,
      Q => \ptr_write_reg__0\(24)
    );
\ptr_write_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ptr_write_reg[20]_i_1_n_0\,
      CO(3) => \ptr_write_reg[24]_i_1_n_0\,
      CO(2) => \ptr_write_reg[24]_i_1_n_1\,
      CO(1) => \ptr_write_reg[24]_i_1_n_2\,
      CO(0) => \ptr_write_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ptr_write_reg[24]_i_1_n_4\,
      O(2) => \ptr_write_reg[24]_i_1_n_5\,
      O(1) => \ptr_write_reg[24]_i_1_n_6\,
      O(0) => \ptr_write_reg[24]_i_1_n_7\,
      S(3 downto 0) => \ptr_write_reg__0\(27 downto 24)
    );
\ptr_write_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ptr_write,
      CLR => reset,
      D => \ptr_write_reg[24]_i_1_n_6\,
      Q => \ptr_write_reg__0\(25)
    );
\ptr_write_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ptr_write,
      CLR => reset,
      D => \ptr_write_reg[24]_i_1_n_5\,
      Q => \ptr_write_reg__0\(26)
    );
\ptr_write_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ptr_write,
      CLR => reset,
      D => \ptr_write_reg[24]_i_1_n_4\,
      Q => \ptr_write_reg__0\(27)
    );
\ptr_write_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ptr_write,
      CLR => reset,
      D => \ptr_write_reg[28]_i_1_n_7\,
      Q => \ptr_write_reg__0\(28)
    );
\ptr_write_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ptr_write_reg[24]_i_1_n_0\,
      CO(3) => \ptr_write_reg[28]_i_1_n_0\,
      CO(2) => \ptr_write_reg[28]_i_1_n_1\,
      CO(1) => \ptr_write_reg[28]_i_1_n_2\,
      CO(0) => \ptr_write_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ptr_write_reg[28]_i_1_n_4\,
      O(2) => \ptr_write_reg[28]_i_1_n_5\,
      O(1) => \ptr_write_reg[28]_i_1_n_6\,
      O(0) => \ptr_write_reg[28]_i_1_n_7\,
      S(3 downto 0) => \ptr_write_reg__0\(31 downto 28)
    );
\ptr_write_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ptr_write,
      CLR => reset,
      D => \ptr_write_reg[28]_i_1_n_6\,
      Q => \ptr_write_reg__0\(29)
    );
\ptr_write_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ptr_write,
      CLR => reset,
      D => \ptr_write_reg[0]_i_2_n_5\,
      Q => \ptr_write_reg__0\(2)
    );
\ptr_write_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ptr_write,
      CLR => reset,
      D => \ptr_write_reg[28]_i_1_n_5\,
      Q => \ptr_write_reg__0\(30)
    );
\ptr_write_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ptr_write,
      CLR => reset,
      D => \ptr_write_reg[28]_i_1_n_4\,
      Q => \ptr_write_reg__0\(31)
    );
\ptr_write_reg[32]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ptr_write,
      CLR => reset,
      D => \ptr_write_reg[32]_i_1_n_7\,
      Q => \ptr_write_reg__0\(32)
    );
\ptr_write_reg[32]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ptr_write_reg[28]_i_1_n_0\,
      CO(3) => \ptr_write_reg[32]_i_1_n_0\,
      CO(2) => \ptr_write_reg[32]_i_1_n_1\,
      CO(1) => \ptr_write_reg[32]_i_1_n_2\,
      CO(0) => \ptr_write_reg[32]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ptr_write_reg[32]_i_1_n_4\,
      O(2) => \ptr_write_reg[32]_i_1_n_5\,
      O(1) => \ptr_write_reg[32]_i_1_n_6\,
      O(0) => \ptr_write_reg[32]_i_1_n_7\,
      S(3 downto 0) => \ptr_write_reg__0\(35 downto 32)
    );
\ptr_write_reg[33]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ptr_write,
      CLR => reset,
      D => \ptr_write_reg[32]_i_1_n_6\,
      Q => \ptr_write_reg__0\(33)
    );
\ptr_write_reg[34]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ptr_write,
      CLR => reset,
      D => \ptr_write_reg[32]_i_1_n_5\,
      Q => \ptr_write_reg__0\(34)
    );
\ptr_write_reg[35]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ptr_write,
      CLR => reset,
      D => \ptr_write_reg[32]_i_1_n_4\,
      Q => \ptr_write_reg__0\(35)
    );
\ptr_write_reg[36]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ptr_write,
      CLR => reset,
      D => \ptr_write_reg[36]_i_1_n_7\,
      Q => \ptr_write_reg__0\(36)
    );
\ptr_write_reg[36]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ptr_write_reg[32]_i_1_n_0\,
      CO(3) => \ptr_write_reg[36]_i_1_n_0\,
      CO(2) => \ptr_write_reg[36]_i_1_n_1\,
      CO(1) => \ptr_write_reg[36]_i_1_n_2\,
      CO(0) => \ptr_write_reg[36]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ptr_write_reg[36]_i_1_n_4\,
      O(2) => \ptr_write_reg[36]_i_1_n_5\,
      O(1) => \ptr_write_reg[36]_i_1_n_6\,
      O(0) => \ptr_write_reg[36]_i_1_n_7\,
      S(3 downto 0) => \ptr_write_reg__0\(39 downto 36)
    );
\ptr_write_reg[37]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ptr_write,
      CLR => reset,
      D => \ptr_write_reg[36]_i_1_n_6\,
      Q => \ptr_write_reg__0\(37)
    );
\ptr_write_reg[38]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ptr_write,
      CLR => reset,
      D => \ptr_write_reg[36]_i_1_n_5\,
      Q => \ptr_write_reg__0\(38)
    );
\ptr_write_reg[39]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ptr_write,
      CLR => reset,
      D => \ptr_write_reg[36]_i_1_n_4\,
      Q => \ptr_write_reg__0\(39)
    );
\ptr_write_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ptr_write,
      CLR => reset,
      D => \ptr_write_reg[0]_i_2_n_4\,
      Q => \ptr_write_reg__0\(3)
    );
\ptr_write_reg[40]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ptr_write,
      CLR => reset,
      D => \ptr_write_reg[40]_i_1_n_7\,
      Q => \ptr_write_reg__0\(40)
    );
\ptr_write_reg[40]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ptr_write_reg[36]_i_1_n_0\,
      CO(3) => \ptr_write_reg[40]_i_1_n_0\,
      CO(2) => \ptr_write_reg[40]_i_1_n_1\,
      CO(1) => \ptr_write_reg[40]_i_1_n_2\,
      CO(0) => \ptr_write_reg[40]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ptr_write_reg[40]_i_1_n_4\,
      O(2) => \ptr_write_reg[40]_i_1_n_5\,
      O(1) => \ptr_write_reg[40]_i_1_n_6\,
      O(0) => \ptr_write_reg[40]_i_1_n_7\,
      S(3 downto 0) => \ptr_write_reg__0\(43 downto 40)
    );
\ptr_write_reg[41]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ptr_write,
      CLR => reset,
      D => \ptr_write_reg[40]_i_1_n_6\,
      Q => \ptr_write_reg__0\(41)
    );
\ptr_write_reg[42]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ptr_write,
      CLR => reset,
      D => \ptr_write_reg[40]_i_1_n_5\,
      Q => \ptr_write_reg__0\(42)
    );
\ptr_write_reg[43]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ptr_write,
      CLR => reset,
      D => \ptr_write_reg[40]_i_1_n_4\,
      Q => \ptr_write_reg__0\(43)
    );
\ptr_write_reg[44]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ptr_write,
      CLR => reset,
      D => \ptr_write_reg[44]_i_1_n_7\,
      Q => \ptr_write_reg__0\(44)
    );
\ptr_write_reg[44]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ptr_write_reg[40]_i_1_n_0\,
      CO(3) => \ptr_write_reg[44]_i_1_n_0\,
      CO(2) => \ptr_write_reg[44]_i_1_n_1\,
      CO(1) => \ptr_write_reg[44]_i_1_n_2\,
      CO(0) => \ptr_write_reg[44]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ptr_write_reg[44]_i_1_n_4\,
      O(2) => \ptr_write_reg[44]_i_1_n_5\,
      O(1) => \ptr_write_reg[44]_i_1_n_6\,
      O(0) => \ptr_write_reg[44]_i_1_n_7\,
      S(3 downto 0) => \ptr_write_reg__0\(47 downto 44)
    );
\ptr_write_reg[45]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ptr_write,
      CLR => reset,
      D => \ptr_write_reg[44]_i_1_n_6\,
      Q => \ptr_write_reg__0\(45)
    );
\ptr_write_reg[46]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ptr_write,
      CLR => reset,
      D => \ptr_write_reg[44]_i_1_n_5\,
      Q => \ptr_write_reg__0\(46)
    );
\ptr_write_reg[47]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ptr_write,
      CLR => reset,
      D => \ptr_write_reg[44]_i_1_n_4\,
      Q => \ptr_write_reg__0\(47)
    );
\ptr_write_reg[48]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ptr_write,
      CLR => reset,
      D => \ptr_write_reg[48]_i_1_n_7\,
      Q => \ptr_write_reg__0\(48)
    );
\ptr_write_reg[48]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ptr_write_reg[44]_i_1_n_0\,
      CO(3 downto 1) => \NLW_ptr_write_reg[48]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \ptr_write_reg[48]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_ptr_write_reg[48]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1) => \ptr_write_reg[48]_i_1_n_6\,
      O(0) => \ptr_write_reg[48]_i_1_n_7\,
      S(3 downto 2) => B"00",
      S(1 downto 0) => \ptr_write_reg__0\(49 downto 48)
    );
\ptr_write_reg[49]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ptr_write,
      CLR => reset,
      D => \ptr_write_reg[48]_i_1_n_6\,
      Q => \ptr_write_reg__0\(49)
    );
\ptr_write_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ptr_write,
      CLR => reset,
      D => \ptr_write_reg[4]_i_1_n_7\,
      Q => \ptr_write_reg__0\(4)
    );
\ptr_write_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ptr_write_reg[0]_i_2_n_0\,
      CO(3) => \ptr_write_reg[4]_i_1_n_0\,
      CO(2) => \ptr_write_reg[4]_i_1_n_1\,
      CO(1) => \ptr_write_reg[4]_i_1_n_2\,
      CO(0) => \ptr_write_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ptr_write_reg[4]_i_1_n_4\,
      O(2) => \ptr_write_reg[4]_i_1_n_5\,
      O(1) => \ptr_write_reg[4]_i_1_n_6\,
      O(0) => \ptr_write_reg[4]_i_1_n_7\,
      S(3 downto 0) => \ptr_write_reg__0\(7 downto 4)
    );
\ptr_write_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ptr_write,
      CLR => reset,
      D => \ptr_write_reg[4]_i_1_n_6\,
      Q => \ptr_write_reg__0\(5)
    );
\ptr_write_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ptr_write,
      CLR => reset,
      D => \ptr_write_reg[4]_i_1_n_5\,
      Q => \ptr_write_reg__0\(6)
    );
\ptr_write_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ptr_write,
      CLR => reset,
      D => \ptr_write_reg[4]_i_1_n_4\,
      Q => \ptr_write_reg__0\(7)
    );
\ptr_write_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ptr_write,
      CLR => reset,
      D => \ptr_write_reg[8]_i_1_n_7\,
      Q => \ptr_write_reg__0\(8)
    );
\ptr_write_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ptr_write_reg[4]_i_1_n_0\,
      CO(3) => \ptr_write_reg[8]_i_1_n_0\,
      CO(2) => \ptr_write_reg[8]_i_1_n_1\,
      CO(1) => \ptr_write_reg[8]_i_1_n_2\,
      CO(0) => \ptr_write_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \ptr_write_reg[8]_i_1_n_4\,
      O(2) => \ptr_write_reg[8]_i_1_n_5\,
      O(1) => \ptr_write_reg[8]_i_1_n_6\,
      O(0) => \ptr_write_reg[8]_i_1_n_7\,
      S(3 downto 0) => \ptr_write_reg__0\(11 downto 8)
    );
\ptr_write_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => ptr_write,
      CLR => reset,
      D => \ptr_write_reg[8]_i_1_n_6\,
      Q => \ptr_write_reg__0\(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_fifo_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    enable_read : in STD_LOGIC;
    enable_write : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    data_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    empty : out STD_LOGIC;
    full : out STD_LOGIC;
    half_full : out STD_LOGIC;
    counter : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_fifo_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_fifo_0_0 : entity is "design_1_fifo_0_0,fifo,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_fifo_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_fifo_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_fifo_0_0 : entity is "fifo,Vivado 2019.1";
end design_1_fifo_0_0;

architecture STRUCTURE of design_1_fifo_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 1, PHASE 0.000, CLK_DOMAIN design_1_dividebyn_0_0_clock_by_n, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.design_1_fifo_0_0_fifo
     port map (
      clk => clk,
      counter(2 downto 0) => counter(2 downto 0),
      data_in(1 downto 0) => data_in(1 downto 0),
      data_out(1 downto 0) => data_out(1 downto 0),
      empty => empty,
      enable_read => enable_read,
      enable_write => enable_write,
      full => full,
      half_full => half_full,
      reset => reset
    );
end STRUCTURE;
