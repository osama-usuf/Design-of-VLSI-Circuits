-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Mon Nov 14 20:00:02 2022
-- Host        : LAPTOP-ZAZU2206 running 64-bit Ubuntu 20.04.4 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/zazu/vivado_projects/fifo_lab_JTAG/fifo_lab_JTAG.srcs/sources_1/bd/design_1/ip/design_1_fifo_0_0/design_1_fifo_0_0_stub.vhdl
-- Design      : design_1_fifo_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z045ffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_fifo_0_0 is
  Port ( 
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

end design_1_fifo_0_0;

architecture stub of design_1_fifo_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,reset,enable_read,enable_write,data_in[1:0],data_out[1:0],empty,full,half_full,counter[2:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "fifo,Vivado 2019.1";
begin
end;
