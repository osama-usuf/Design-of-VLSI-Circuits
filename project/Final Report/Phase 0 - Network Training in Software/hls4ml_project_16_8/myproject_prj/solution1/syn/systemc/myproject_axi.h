// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _myproject_axi_HH_
#define _myproject_axi_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "myproject.h"
#include "myproject_axi_fpext_32ns_64_2_1.h"
#include "myproject_axi_mux_104_16_1_1.h"

namespace ap_rtl {

struct myproject_axi : public sc_module {
    // Port declarations 10
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst_n;
    sc_in< sc_lv<32> > in_r_TDATA;
    sc_in< sc_logic > in_r_TVALID;
    sc_out< sc_logic > in_r_TREADY;
    sc_in< sc_lv<1> > in_r_TLAST;
    sc_out< sc_lv<32> > out_r_TDATA;
    sc_out< sc_logic > out_r_TVALID;
    sc_in< sc_logic > out_r_TREADY;
    sc_out< sc_lv<1> > out_r_TLAST;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    myproject_axi(sc_module_name name);
    SC_HAS_PROCESS(myproject_axi);

    ~myproject_axi();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    myproject* grp_myproject_fu_229;
    myproject_axi_fpext_32ns_64_2_1<1,2,32,64>* myproject_axi_fpext_32ns_64_2_1_U1272;
    myproject_axi_mux_104_16_1_1<1,1,16,16,16,16,16,16,16,16,16,16,4,16>* myproject_axi_mux_104_16_1_1_U1273;
    sc_signal< sc_logic > ap_rst_n_inv;
    sc_signal< sc_lv<32> > in_data_0_data_out;
    sc_signal< sc_logic > in_data_0_vld_in;
    sc_signal< sc_logic > in_data_0_vld_out;
    sc_signal< sc_logic > in_data_0_ack_in;
    sc_signal< sc_logic > in_data_0_ack_out;
    sc_signal< sc_lv<32> > in_data_0_payload_A;
    sc_signal< sc_lv<32> > in_data_0_payload_B;
    sc_signal< sc_logic > in_data_0_sel_rd;
    sc_signal< sc_logic > in_data_0_sel_wr;
    sc_signal< sc_logic > in_data_0_sel;
    sc_signal< sc_logic > in_data_0_load_A;
    sc_signal< sc_logic > in_data_0_load_B;
    sc_signal< sc_lv<2> > in_data_0_state;
    sc_signal< sc_logic > in_data_0_state_cmp_full;
    sc_signal< sc_lv<1> > in_last_V_0_data_out;
    sc_signal< sc_logic > in_last_V_0_vld_in;
    sc_signal< sc_logic > in_last_V_0_vld_out;
    sc_signal< sc_logic > in_last_V_0_ack_in;
    sc_signal< sc_logic > in_last_V_0_ack_out;
    sc_signal< sc_lv<1> > in_last_V_0_payload_A;
    sc_signal< sc_lv<1> > in_last_V_0_payload_B;
    sc_signal< sc_logic > in_last_V_0_sel_rd;
    sc_signal< sc_logic > in_last_V_0_sel_wr;
    sc_signal< sc_logic > in_last_V_0_sel;
    sc_signal< sc_logic > in_last_V_0_load_A;
    sc_signal< sc_logic > in_last_V_0_load_B;
    sc_signal< sc_lv<2> > in_last_V_0_state;
    sc_signal< sc_logic > in_last_V_0_state_cmp_full;
    sc_signal< sc_lv<32> > out_data_1_data_out;
    sc_signal< sc_logic > out_data_1_vld_in;
    sc_signal< sc_logic > out_data_1_vld_out;
    sc_signal< sc_logic > out_data_1_ack_in;
    sc_signal< sc_logic > out_data_1_ack_out;
    sc_signal< sc_lv<32> > out_data_1_payload_A;
    sc_signal< sc_lv<32> > out_data_1_payload_B;
    sc_signal< sc_logic > out_data_1_sel_rd;
    sc_signal< sc_logic > out_data_1_sel_wr;
    sc_signal< sc_logic > out_data_1_sel;
    sc_signal< sc_logic > out_data_1_load_A;
    sc_signal< sc_logic > out_data_1_load_B;
    sc_signal< sc_lv<2> > out_data_1_state;
    sc_signal< sc_logic > out_data_1_state_cmp_full;
    sc_signal< sc_lv<1> > out_last_V_1_data_out;
    sc_signal< sc_logic > out_last_V_1_vld_in;
    sc_signal< sc_logic > out_last_V_1_vld_out;
    sc_signal< sc_logic > out_last_V_1_ack_in;
    sc_signal< sc_logic > out_last_V_1_ack_out;
    sc_signal< sc_lv<1> > out_last_V_1_payload_A;
    sc_signal< sc_lv<1> > out_last_V_1_payload_B;
    sc_signal< sc_logic > out_last_V_1_sel_rd;
    sc_signal< sc_logic > out_last_V_1_sel_wr;
    sc_signal< sc_logic > out_last_V_1_sel;
    sc_signal< sc_logic > out_last_V_1_load_A;
    sc_signal< sc_logic > out_last_V_1_load_B;
    sc_signal< sc_lv<2> > out_last_V_1_state;
    sc_signal< sc_logic > out_last_V_1_state_cmp_full;
    sc_signal< sc_logic > in_r_TDATA_blk_n;
    sc_signal< sc_lv<21> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<1> > icmp_ln19_fu_237_p2;
    sc_signal< sc_logic > out_r_TDATA_blk_n;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter5;
    sc_signal< bool > ap_block_pp1_stage0;
    sc_signal< sc_lv<1> > icmp_ln27_reg_1245;
    sc_signal< sc_lv<1> > icmp_ln27_reg_1245_pp1_iter4_reg;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter6;
    sc_signal< sc_lv<1> > icmp_ln27_reg_1245_pp1_iter5_reg;
    sc_signal< sc_lv<1> > is_last_0_reg_194;
    sc_signal< sc_lv<9> > i_0_reg_206;
    sc_signal< sc_lv<9> > i_0_reg_206_pp0_iter1_reg;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter2;
    sc_signal< bool > ap_block_state5_pp0_stage0_iter3;
    sc_signal< bool > ap_block_state6_pp0_stage0_iter4;
    sc_signal< bool > ap_block_state7_pp0_stage0_iter5;
    sc_signal< bool > ap_block_state8_pp0_stage0_iter6;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<9> > i_0_reg_206_pp0_iter2_reg;
    sc_signal< sc_lv<4> > i2_0_reg_218;
    sc_signal< sc_lv<1> > icmp_ln19_reg_1047;
    sc_signal< sc_lv<1> > icmp_ln19_reg_1047_pp0_iter1_reg;
    sc_signal< sc_lv<1> > icmp_ln19_reg_1047_pp0_iter2_reg;
    sc_signal< sc_lv<1> > icmp_ln19_reg_1047_pp0_iter3_reg;
    sc_signal< sc_lv<1> > icmp_ln19_reg_1047_pp0_iter4_reg;
    sc_signal< sc_lv<1> > icmp_ln19_reg_1047_pp0_iter5_reg;
    sc_signal< sc_lv<9> > i_fu_243_p2;
    sc_signal< sc_lv<9> > i_reg_1051;
    sc_signal< sc_lv<32> > in_data_tmp_reg_1056;
    sc_signal< sc_lv<32> > in_data_tmp_reg_1056_pp0_iter1_reg;
    sc_signal< sc_lv<32> > in_data_tmp_reg_1056_pp0_iter2_reg;
    sc_signal< sc_lv<1> > is_last_fu_258_p2;
    sc_signal< sc_lv<1> > is_last_reg_1062;
    sc_signal< sc_lv<63> > trunc_ln556_fu_268_p1;
    sc_signal< sc_lv<63> > trunc_ln556_reg_1067;
    sc_signal< sc_lv<1> > p_Result_8_reg_1072;
    sc_signal< sc_lv<1> > p_Result_8_reg_1072_pp0_iter2_reg;
    sc_signal< sc_lv<11> > exp_tmp_V_reg_1077;
    sc_signal< sc_lv<52> > trunc_ln565_fu_290_p1;
    sc_signal< sc_lv<52> > trunc_ln565_reg_1082;
    sc_signal< sc_lv<52> > trunc_ln565_reg_1082_pp0_iter2_reg;
    sc_signal< sc_lv<1> > icmp_ln571_fu_297_p2;
    sc_signal< sc_lv<1> > icmp_ln571_reg_1087;
    sc_signal< sc_lv<1> > icmp_ln581_fu_308_p2;
    sc_signal< sc_lv<1> > icmp_ln581_reg_1093;
    sc_signal< sc_lv<12> > sh_amt_fu_326_p3;
    sc_signal< sc_lv<12> > sh_amt_reg_1099;
    sc_signal< sc_lv<12> > sh_amt_reg_1099_pp0_iter3_reg;
    sc_signal< sc_lv<1> > icmp_ln582_fu_334_p2;
    sc_signal< sc_lv<1> > icmp_ln582_reg_1105;
    sc_signal< sc_lv<8> > tmp_4_reg_1111;
    sc_signal< sc_lv<54> > man_V_2_fu_367_p3;
    sc_signal< sc_lv<54> > man_V_2_reg_1116;
    sc_signal< sc_lv<16> > trunc_ln583_fu_374_p1;
    sc_signal< sc_lv<16> > trunc_ln583_reg_1121;
    sc_signal< sc_lv<1> > and_ln603_fu_461_p2;
    sc_signal< sc_lv<1> > and_ln603_reg_1126;
    sc_signal< sc_lv<1> > or_ln603_fu_467_p2;
    sc_signal< sc_lv<1> > or_ln603_reg_1131;
    sc_signal< sc_lv<16> > select_ln603_1_fu_473_p3;
    sc_signal< sc_lv<16> > select_ln603_1_reg_1136;
    sc_signal< sc_lv<1> > or_ln603_2_fu_487_p2;
    sc_signal< sc_lv<1> > or_ln603_2_reg_1141;
    sc_signal< sc_lv<13> > shl_ln_fu_493_p3;
    sc_signal< sc_lv<13> > shl_ln_reg_1146;
    sc_signal< sc_lv<13> > shl_ln_reg_1146_pp0_iter4_reg;
    sc_signal< sc_lv<16> > select_ln603_3_fu_539_p3;
    sc_signal< sc_lv<16> > select_ln603_3_reg_1156;
    sc_signal< sc_lv<13> > empty_34_fu_546_p2;
    sc_signal< sc_lv<13> > empty_34_reg_1161;
    sc_signal< sc_lv<1> > icmp_ln203_fu_551_p2;
    sc_signal< sc_lv<1> > icmp_ln203_reg_1166;
    sc_signal< sc_lv<1> > icmp_ln203_reg_1166_pp0_iter5_reg;
    sc_signal< sc_lv<13> > sub_ln203_fu_556_p2;
    sc_signal< sc_lv<13> > sub_ln203_reg_1173;
    sc_signal< sc_lv<13> > sub_ln203_1_fu_568_p2;
    sc_signal< sc_lv<13> > sub_ln203_1_reg_1178;
    sc_signal< sc_lv<5184> > shl_ln203_fu_598_p2;
    sc_signal< sc_lv<5184> > shl_ln203_reg_1183;
    sc_signal< sc_lv<5184> > and_ln203_fu_616_p2;
    sc_signal< sc_lv<5184> > and_ln203_reg_1189;
    sc_signal< sc_lv<16> > out_local_reg_1195;
    sc_signal< sc_logic > ap_CS_fsm_state25;
    sc_signal< sc_lv<16> > out_local_1_reg_1200;
    sc_signal< sc_lv<16> > out_local_2_reg_1205;
    sc_signal< sc_lv<16> > out_local_3_reg_1210;
    sc_signal< sc_lv<16> > out_local_4_reg_1215;
    sc_signal< sc_lv<16> > out_local_5_reg_1220;
    sc_signal< sc_lv<16> > out_local_6_reg_1225;
    sc_signal< sc_lv<16> > out_local_7_reg_1230;
    sc_signal< sc_lv<16> > out_local_8_reg_1235;
    sc_signal< sc_lv<16> > out_local_9_reg_1240;
    sc_signal< sc_lv<1> > icmp_ln27_fu_707_p2;
    sc_signal< sc_logic > ap_CS_fsm_pp1_stage0;
    sc_signal< bool > ap_block_state26_pp1_stage0_iter0;
    sc_signal< bool > ap_block_state27_pp1_stage0_iter1;
    sc_signal< bool > ap_block_state28_pp1_stage0_iter2;
    sc_signal< bool > ap_block_state29_pp1_stage0_iter3;
    sc_signal< bool > ap_block_state30_pp1_stage0_iter4;
    sc_signal< bool > ap_block_state31_pp1_stage0_iter5;
    sc_signal< bool > ap_block_state31_io;
    sc_signal< bool > ap_block_state32_pp1_stage0_iter6;
    sc_signal< bool > ap_block_state32_io;
    sc_signal< bool > ap_block_pp1_stage0_11001;
    sc_signal< sc_lv<1> > icmp_ln27_reg_1245_pp1_iter1_reg;
    sc_signal< sc_lv<1> > icmp_ln27_reg_1245_pp1_iter2_reg;
    sc_signal< sc_lv<1> > icmp_ln27_reg_1245_pp1_iter3_reg;
    sc_signal< sc_lv<4> > i_1_fu_713_p2;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter0;
    sc_signal< sc_lv<16> > tmp_V_3_fu_719_p12;
    sc_signal< sc_lv<16> > tmp_V_3_reg_1254;
    sc_signal< sc_lv<1> > p_Result_10_reg_1260;
    sc_signal< sc_lv<1> > p_Result_10_reg_1260_pp1_iter1_reg;
    sc_signal< sc_lv<1> > p_Result_10_reg_1260_pp1_iter2_reg;
    sc_signal< sc_lv<1> > p_Result_10_reg_1260_pp1_iter3_reg;
    sc_signal< sc_lv<1> > p_Result_10_reg_1260_pp1_iter4_reg;
    sc_signal< sc_lv<16> > tmp_V_fu_743_p2;
    sc_signal< sc_lv<16> > tmp_V_reg_1266;
    sc_signal< sc_lv<1> > and_ln30_fu_755_p2;
    sc_signal< sc_lv<1> > and_ln30_reg_1271;
    sc_signal< sc_lv<1> > and_ln30_reg_1271_pp1_iter1_reg;
    sc_signal< sc_lv<1> > and_ln30_reg_1271_pp1_iter2_reg;
    sc_signal< sc_lv<1> > and_ln30_reg_1271_pp1_iter3_reg;
    sc_signal< sc_lv<1> > and_ln30_reg_1271_pp1_iter4_reg;
    sc_signal< sc_lv<1> > icmp_ln935_fu_761_p2;
    sc_signal< sc_lv<1> > icmp_ln935_reg_1276;
    sc_signal< sc_lv<1> > icmp_ln935_reg_1276_pp1_iter2_reg;
    sc_signal< sc_lv<1> > icmp_ln935_reg_1276_pp1_iter3_reg;
    sc_signal< sc_lv<1> > icmp_ln935_reg_1276_pp1_iter4_reg;
    sc_signal< sc_lv<16> > tmp_V_4_fu_766_p3;
    sc_signal< sc_lv<16> > tmp_V_4_reg_1281;
    sc_signal< sc_lv<16> > tmp_V_4_reg_1281_pp1_iter2_reg;
    sc_signal< sc_lv<16> > tmp_V_4_reg_1281_pp1_iter3_reg;
    sc_signal< sc_lv<32> > l_fu_789_p3;
    sc_signal< sc_lv<32> > l_reg_1289;
    sc_signal< sc_lv<8> > trunc_ln943_fu_797_p1;
    sc_signal< sc_lv<8> > trunc_ln943_reg_1294;
    sc_signal< sc_lv<8> > trunc_ln943_reg_1294_pp1_iter2_reg;
    sc_signal< sc_lv<8> > trunc_ln943_reg_1294_pp1_iter3_reg;
    sc_signal< sc_lv<8> > trunc_ln943_reg_1294_pp1_iter4_reg;
    sc_signal< sc_lv<32> > sub_ln944_fu_801_p2;
    sc_signal< sc_lv<32> > sub_ln944_reg_1299;
    sc_signal< sc_lv<16> > trunc_ln944_fu_806_p1;
    sc_signal< sc_lv<16> > trunc_ln944_reg_1306;
    sc_signal< sc_lv<5> > trunc_ln947_fu_810_p1;
    sc_signal< sc_lv<5> > trunc_ln947_reg_1311;
    sc_signal< sc_lv<32> > lsb_index_fu_814_p2;
    sc_signal< sc_lv<32> > lsb_index_reg_1316;
    sc_signal< sc_lv<1> > icmp_ln947_fu_829_p2;
    sc_signal< sc_lv<1> > icmp_ln947_reg_1321;
    sc_signal< sc_lv<1> > icmp_ln947_1_fu_855_p2;
    sc_signal< sc_lv<1> > icmp_ln947_1_reg_1326;
    sc_signal< sc_lv<16> > add_ln949_fu_861_p2;
    sc_signal< sc_lv<16> > add_ln949_reg_1331;
    sc_signal< sc_lv<1> > icmp_ln958_fu_866_p2;
    sc_signal< sc_lv<1> > icmp_ln958_reg_1336;
    sc_signal< sc_lv<32> > add_ln958_fu_872_p2;
    sc_signal< sc_lv<32> > add_ln958_reg_1341;
    sc_signal< sc_lv<32> > sub_ln958_fu_877_p2;
    sc_signal< sc_lv<32> > sub_ln958_reg_1346;
    sc_signal< sc_lv<63> > m_5_reg_1351;
    sc_signal< sc_lv<1> > tmp_10_reg_1356;
    sc_signal< sc_lv<32> > select_ln935_fu_1032_p3;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter3;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter4;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter5;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter6;
    sc_signal< bool > ap_block_pp1_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp1_exit_iter0_state26;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter1;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter2;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter3;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter4;
    sc_signal< sc_logic > grp_myproject_fu_229_ap_start;
    sc_signal< sc_logic > grp_myproject_fu_229_ap_done;
    sc_signal< sc_logic > grp_myproject_fu_229_ap_idle;
    sc_signal< sc_logic > grp_myproject_fu_229_ap_ready;
    sc_signal< sc_lv<16> > grp_myproject_fu_229_ap_return_0;
    sc_signal< sc_lv<16> > grp_myproject_fu_229_ap_return_1;
    sc_signal< sc_lv<16> > grp_myproject_fu_229_ap_return_2;
    sc_signal< sc_lv<16> > grp_myproject_fu_229_ap_return_3;
    sc_signal< sc_lv<16> > grp_myproject_fu_229_ap_return_4;
    sc_signal< sc_lv<16> > grp_myproject_fu_229_ap_return_5;
    sc_signal< sc_lv<16> > grp_myproject_fu_229_ap_return_6;
    sc_signal< sc_lv<16> > grp_myproject_fu_229_ap_return_7;
    sc_signal< sc_lv<16> > grp_myproject_fu_229_ap_return_8;
    sc_signal< sc_lv<16> > grp_myproject_fu_229_ap_return_9;
    sc_signal< sc_logic > grp_myproject_fu_229_input1_V_blk_n;
    sc_signal< sc_lv<1> > ap_phi_mux_is_last_0_phi_fu_198_p4;
    sc_signal< sc_lv<9> > ap_phi_mux_i_0_phi_fu_210_p4;
    sc_signal< sc_logic > grp_myproject_fu_229_ap_start_reg;
    sc_signal< sc_lv<21> > ap_NS_fsm;
    sc_signal< sc_logic > ap_NS_fsm_state9;
    sc_signal< sc_lv<5184> > in_local_V_fu_172;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<5184> > in_local_V_1_fu_656_p2;
    sc_signal< bool > ap_block_pp1_stage0_01001;
    sc_signal< sc_lv<64> > grp_fu_234_p1;
    sc_signal< sc_lv<64> > ireg_V_fu_264_p1;
    sc_signal< sc_lv<12> > zext_ln461_fu_294_p1;
    sc_signal< sc_lv<12> > F2_fu_302_p2;
    sc_signal< sc_lv<12> > add_ln581_fu_314_p2;
    sc_signal< sc_lv<12> > sub_ln581_fu_320_p2;
    sc_signal< sc_lv<53> > tmp_s_fu_350_p3;
    sc_signal< sc_lv<54> > p_Result_9_fu_357_p1;
    sc_signal< sc_lv<54> > man_V_1_fu_361_p2;
    sc_signal< sc_lv<32> > bitcast_ln696_fu_388_p1;
    sc_signal< sc_lv<1> > tmp_5_fu_391_p3;
    sc_signal< sc_lv<1> > xor_ln571_fu_407_p2;
    sc_signal< sc_lv<1> > or_ln582_fu_417_p2;
    sc_signal< sc_lv<1> > xor_ln582_fu_421_p2;
    sc_signal< sc_lv<1> > icmp_ln585_fu_378_p2;
    sc_signal< sc_lv<1> > and_ln581_fu_427_p2;
    sc_signal< sc_lv<1> > xor_ln585_fu_432_p2;
    sc_signal< sc_lv<1> > or_ln581_fu_450_p2;
    sc_signal< sc_lv<1> > icmp_ln603_fu_383_p2;
    sc_signal< sc_lv<1> > xor_ln581_fu_455_p2;
    sc_signal< sc_lv<1> > and_ln585_1_fu_444_p2;
    sc_signal< sc_lv<1> > and_ln585_fu_438_p2;
    sc_signal< sc_lv<16> > select_ln588_fu_399_p3;
    sc_signal< sc_lv<1> > and_ln582_fu_412_p2;
    sc_signal< sc_lv<1> > or_ln603_1_fu_481_p2;
    sc_signal< sc_lv<32> > sext_ln581_fu_501_p1;
    sc_signal< sc_lv<54> > zext_ln586_fu_504_p1;
    sc_signal< sc_lv<54> > ashr_ln586_fu_508_p2;
    sc_signal< sc_lv<16> > sext_ln581cast_fu_517_p1;
    sc_signal< sc_lv<16> > shl_ln604_fu_521_p2;
    sc_signal< sc_lv<16> > trunc_ln586_fu_513_p1;
    sc_signal< sc_lv<16> > select_ln603_fu_526_p3;
    sc_signal< sc_lv<16> > select_ln603_2_fu_533_p3;
    sc_signal< sc_lv<13> > select_ln203_fu_561_p3;
    sc_signal< sc_lv<13> > select_ln203_2_fu_582_p3;
    sc_signal< sc_lv<13> > select_ln203_1_fu_577_p3;
    sc_signal< sc_lv<5184> > zext_ln203_fu_574_p1;
    sc_signal< sc_lv<5184> > zext_ln203_1_fu_587_p1;
    sc_signal< sc_lv<5184> > zext_ln203_2_fu_591_p1;
    sc_signal< sc_lv<5184> > zext_ln203_3_fu_595_p1;
    sc_signal< sc_lv<5184> > shl_ln203_1_fu_604_p2;
    sc_signal< sc_lv<5184> > lshr_ln203_fu_610_p2;
    sc_signal< sc_lv<5184> > tmp_6_fu_625_p4;
    sc_signal< sc_lv<5184> > xor_ln203_fu_640_p2;
    sc_signal< sc_lv<5184> > select_ln203_3_fu_634_p3;
    sc_signal< sc_lv<5184> > and_ln203_1_fu_645_p2;
    sc_signal< sc_lv<5184> > and_ln203_2_fu_651_p2;
    sc_signal< sc_lv<1> > icmp_ln30_fu_749_p2;
    sc_signal< sc_lv<16> > p_Result_s_fu_771_p4;
    sc_signal< sc_lv<32> > p_Result_11_fu_781_p3;
    sc_signal< sc_lv<31> > tmp_8_fu_819_p4;
    sc_signal< sc_lv<5> > sub_ln947_fu_835_p2;
    sc_signal< sc_lv<16> > zext_ln947_fu_840_p1;
    sc_signal< sc_lv<16> > lshr_ln947_fu_844_p2;
    sc_signal< sc_lv<16> > p_Result_6_fu_850_p2;
    sc_signal< sc_lv<1> > tmp_9_fu_886_p3;
    sc_signal< sc_lv<1> > p_Result_5_fu_899_p3;
    sc_signal< sc_lv<1> > xor_ln949_fu_893_p2;
    sc_signal< sc_lv<1> > and_ln949_fu_905_p2;
    sc_signal< sc_lv<1> > a_fu_882_p2;
    sc_signal< sc_lv<1> > or_ln949_fu_911_p2;
    sc_signal< sc_lv<32> > zext_ln957_1_fu_928_p1;
    sc_signal< sc_lv<32> > lshr_ln958_fu_931_p2;
    sc_signal< sc_lv<64> > m_fu_925_p1;
    sc_signal< sc_lv<64> > zext_ln958_1_fu_940_p1;
    sc_signal< sc_lv<64> > zext_ln958_fu_936_p1;
    sc_signal< sc_lv<64> > shl_ln958_fu_943_p2;
    sc_signal< sc_lv<32> > or_ln_fu_917_p3;
    sc_signal< sc_lv<64> > m_1_fu_949_p3;
    sc_signal< sc_lv<64> > zext_ln961_fu_956_p1;
    sc_signal< sc_lv<64> > m_2_fu_960_p2;
    sc_signal< sc_lv<8> > select_ln964_fu_987_p3;
    sc_signal< sc_lv<8> > sub_ln964_fu_994_p2;
    sc_signal< sc_lv<8> > add_ln964_fu_999_p2;
    sc_signal< sc_lv<64> > m_6_fu_984_p1;
    sc_signal< sc_lv<9> > tmp_2_fu_1005_p3;
    sc_signal< sc_lv<64> > p_Result_12_fu_1012_p5;
    sc_signal< sc_lv<32> > trunc_ln738_fu_1024_p1;
    sc_signal< sc_lv<32> > bitcast_ln739_fu_1028_p1;
    sc_signal< sc_logic > grp_fu_234_ce;
    sc_signal< sc_logic > ap_CS_fsm_state33;
    sc_signal< bool > ap_block_state33;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    sc_signal< sc_logic > ap_idle_pp1;
    sc_signal< sc_logic > ap_enable_pp1;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<21> ap_ST_fsm_state1;
    static const sc_lv<21> ap_ST_fsm_pp0_stage0;
    static const sc_lv<21> ap_ST_fsm_state9;
    static const sc_lv<21> ap_ST_fsm_state10;
    static const sc_lv<21> ap_ST_fsm_state11;
    static const sc_lv<21> ap_ST_fsm_state12;
    static const sc_lv<21> ap_ST_fsm_state13;
    static const sc_lv<21> ap_ST_fsm_state14;
    static const sc_lv<21> ap_ST_fsm_state15;
    static const sc_lv<21> ap_ST_fsm_state16;
    static const sc_lv<21> ap_ST_fsm_state17;
    static const sc_lv<21> ap_ST_fsm_state18;
    static const sc_lv<21> ap_ST_fsm_state19;
    static const sc_lv<21> ap_ST_fsm_state20;
    static const sc_lv<21> ap_ST_fsm_state21;
    static const sc_lv<21> ap_ST_fsm_state22;
    static const sc_lv<21> ap_ST_fsm_state23;
    static const sc_lv<21> ap_ST_fsm_state24;
    static const sc_lv<21> ap_ST_fsm_state25;
    static const sc_lv<21> ap_ST_fsm_pp1_stage0;
    static const sc_lv<21> ap_ST_fsm_state33;
    static const bool ap_const_boolean_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const bool ap_const_boolean_0;
    static const sc_lv<32> ap_const_lv32_12;
    static const sc_lv<32> ap_const_lv32_13;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<9> ap_const_lv9_0;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<9> ap_const_lv9_144;
    static const sc_lv<9> ap_const_lv9_1;
    static const sc_lv<32> ap_const_lv32_3F;
    static const sc_lv<32> ap_const_lv32_34;
    static const sc_lv<32> ap_const_lv32_3E;
    static const sc_lv<63> ap_const_lv63_0;
    static const sc_lv<12> ap_const_lv12_433;
    static const sc_lv<12> ap_const_lv12_8;
    static const sc_lv<12> ap_const_lv12_FF8;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<54> ap_const_lv54_0;
    static const sc_lv<12> ap_const_lv12_36;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<16> ap_const_lv16_FFFF;
    static const sc_lv<16> ap_const_lv16_0;
    static const sc_lv<13> ap_const_lv13_F;
    static const sc_lv<13> ap_const_lv13_143F;
    static const sc_lv<5184> ap_const_lv5184_lc_2;
    static const sc_lv<32> ap_const_lv32_143F;
    static const sc_lv<4> ap_const_lv4_A;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<4> ap_const_lv4_9;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_FFFFFFE8;
    static const sc_lv<31> ap_const_lv31_0;
    static const sc_lv<5> ap_const_lv5_9;
    static const sc_lv<16> ap_const_lv16_FFE8;
    static const sc_lv<32> ap_const_lv32_FFFFFFE7;
    static const sc_lv<32> ap_const_lv32_19;
    static const sc_lv<8> ap_const_lv8_7F;
    static const sc_lv<8> ap_const_lv8_7E;
    static const sc_lv<8> ap_const_lv8_8;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<32> ap_const_lv32_14;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_F2_fu_302_p2();
    void thread_a_fu_882_p2();
    void thread_add_ln581_fu_314_p2();
    void thread_add_ln949_fu_861_p2();
    void thread_add_ln958_fu_872_p2();
    void thread_add_ln964_fu_999_p2();
    void thread_and_ln203_1_fu_645_p2();
    void thread_and_ln203_2_fu_651_p2();
    void thread_and_ln203_fu_616_p2();
    void thread_and_ln30_fu_755_p2();
    void thread_and_ln581_fu_427_p2();
    void thread_and_ln582_fu_412_p2();
    void thread_and_ln585_1_fu_444_p2();
    void thread_and_ln585_fu_438_p2();
    void thread_and_ln603_fu_461_p2();
    void thread_and_ln949_fu_905_p2();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_pp1_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state25();
    void thread_ap_CS_fsm_state33();
    void thread_ap_CS_fsm_state9();
    void thread_ap_NS_fsm_state9();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_pp1_stage0();
    void thread_ap_block_pp1_stage0_01001();
    void thread_ap_block_pp1_stage0_11001();
    void thread_ap_block_pp1_stage0_subdone();
    void thread_ap_block_state26_pp1_stage0_iter0();
    void thread_ap_block_state27_pp1_stage0_iter1();
    void thread_ap_block_state28_pp1_stage0_iter2();
    void thread_ap_block_state29_pp1_stage0_iter3();
    void thread_ap_block_state2_pp0_stage0_iter0();
    void thread_ap_block_state30_pp1_stage0_iter4();
    void thread_ap_block_state31_io();
    void thread_ap_block_state31_pp1_stage0_iter5();
    void thread_ap_block_state32_io();
    void thread_ap_block_state32_pp1_stage0_iter6();
    void thread_ap_block_state33();
    void thread_ap_block_state3_pp0_stage0_iter1();
    void thread_ap_block_state4_pp0_stage0_iter2();
    void thread_ap_block_state5_pp0_stage0_iter3();
    void thread_ap_block_state6_pp0_stage0_iter4();
    void thread_ap_block_state7_pp0_stage0_iter5();
    void thread_ap_block_state8_pp0_stage0_iter6();
    void thread_ap_condition_pp0_exit_iter0_state2();
    void thread_ap_condition_pp1_exit_iter0_state26();
    void thread_ap_enable_pp0();
    void thread_ap_enable_pp1();
    void thread_ap_idle_pp0();
    void thread_ap_idle_pp1();
    void thread_ap_phi_mux_i_0_phi_fu_210_p4();
    void thread_ap_phi_mux_is_last_0_phi_fu_198_p4();
    void thread_ap_rst_n_inv();
    void thread_ashr_ln586_fu_508_p2();
    void thread_bitcast_ln696_fu_388_p1();
    void thread_bitcast_ln739_fu_1028_p1();
    void thread_empty_34_fu_546_p2();
    void thread_grp_fu_234_ce();
    void thread_grp_myproject_fu_229_ap_start();
    void thread_i_1_fu_713_p2();
    void thread_i_fu_243_p2();
    void thread_icmp_ln19_fu_237_p2();
    void thread_icmp_ln203_fu_551_p2();
    void thread_icmp_ln27_fu_707_p2();
    void thread_icmp_ln30_fu_749_p2();
    void thread_icmp_ln571_fu_297_p2();
    void thread_icmp_ln581_fu_308_p2();
    void thread_icmp_ln582_fu_334_p2();
    void thread_icmp_ln585_fu_378_p2();
    void thread_icmp_ln603_fu_383_p2();
    void thread_icmp_ln935_fu_761_p2();
    void thread_icmp_ln947_1_fu_855_p2();
    void thread_icmp_ln947_fu_829_p2();
    void thread_icmp_ln958_fu_866_p2();
    void thread_in_data_0_ack_in();
    void thread_in_data_0_ack_out();
    void thread_in_data_0_data_out();
    void thread_in_data_0_load_A();
    void thread_in_data_0_load_B();
    void thread_in_data_0_sel();
    void thread_in_data_0_state_cmp_full();
    void thread_in_data_0_vld_in();
    void thread_in_data_0_vld_out();
    void thread_in_last_V_0_ack_in();
    void thread_in_last_V_0_ack_out();
    void thread_in_last_V_0_data_out();
    void thread_in_last_V_0_load_A();
    void thread_in_last_V_0_load_B();
    void thread_in_last_V_0_sel();
    void thread_in_last_V_0_state_cmp_full();
    void thread_in_last_V_0_vld_in();
    void thread_in_last_V_0_vld_out();
    void thread_in_local_V_1_fu_656_p2();
    void thread_in_r_TDATA_blk_n();
    void thread_in_r_TREADY();
    void thread_ireg_V_fu_264_p1();
    void thread_is_last_fu_258_p2();
    void thread_l_fu_789_p3();
    void thread_lsb_index_fu_814_p2();
    void thread_lshr_ln203_fu_610_p2();
    void thread_lshr_ln947_fu_844_p2();
    void thread_lshr_ln958_fu_931_p2();
    void thread_m_1_fu_949_p3();
    void thread_m_2_fu_960_p2();
    void thread_m_6_fu_984_p1();
    void thread_m_fu_925_p1();
    void thread_man_V_1_fu_361_p2();
    void thread_man_V_2_fu_367_p3();
    void thread_or_ln581_fu_450_p2();
    void thread_or_ln582_fu_417_p2();
    void thread_or_ln603_1_fu_481_p2();
    void thread_or_ln603_2_fu_487_p2();
    void thread_or_ln603_fu_467_p2();
    void thread_or_ln949_fu_911_p2();
    void thread_or_ln_fu_917_p3();
    void thread_out_data_1_ack_in();
    void thread_out_data_1_ack_out();
    void thread_out_data_1_data_out();
    void thread_out_data_1_load_A();
    void thread_out_data_1_load_B();
    void thread_out_data_1_sel();
    void thread_out_data_1_state_cmp_full();
    void thread_out_data_1_vld_in();
    void thread_out_data_1_vld_out();
    void thread_out_last_V_1_ack_in();
    void thread_out_last_V_1_ack_out();
    void thread_out_last_V_1_data_out();
    void thread_out_last_V_1_load_A();
    void thread_out_last_V_1_load_B();
    void thread_out_last_V_1_sel();
    void thread_out_last_V_1_state_cmp_full();
    void thread_out_last_V_1_vld_in();
    void thread_out_last_V_1_vld_out();
    void thread_out_r_TDATA();
    void thread_out_r_TDATA_blk_n();
    void thread_out_r_TLAST();
    void thread_out_r_TVALID();
    void thread_p_Result_11_fu_781_p3();
    void thread_p_Result_12_fu_1012_p5();
    void thread_p_Result_5_fu_899_p3();
    void thread_p_Result_6_fu_850_p2();
    void thread_p_Result_9_fu_357_p1();
    void thread_p_Result_s_fu_771_p4();
    void thread_select_ln203_1_fu_577_p3();
    void thread_select_ln203_2_fu_582_p3();
    void thread_select_ln203_3_fu_634_p3();
    void thread_select_ln203_fu_561_p3();
    void thread_select_ln588_fu_399_p3();
    void thread_select_ln603_1_fu_473_p3();
    void thread_select_ln603_2_fu_533_p3();
    void thread_select_ln603_3_fu_539_p3();
    void thread_select_ln603_fu_526_p3();
    void thread_select_ln935_fu_1032_p3();
    void thread_select_ln964_fu_987_p3();
    void thread_sext_ln581_fu_501_p1();
    void thread_sext_ln581cast_fu_517_p1();
    void thread_sh_amt_fu_326_p3();
    void thread_shl_ln203_1_fu_604_p2();
    void thread_shl_ln203_fu_598_p2();
    void thread_shl_ln604_fu_521_p2();
    void thread_shl_ln958_fu_943_p2();
    void thread_shl_ln_fu_493_p3();
    void thread_sub_ln203_1_fu_568_p2();
    void thread_sub_ln203_fu_556_p2();
    void thread_sub_ln581_fu_320_p2();
    void thread_sub_ln944_fu_801_p2();
    void thread_sub_ln947_fu_835_p2();
    void thread_sub_ln958_fu_877_p2();
    void thread_sub_ln964_fu_994_p2();
    void thread_tmp_2_fu_1005_p3();
    void thread_tmp_5_fu_391_p3();
    void thread_tmp_6_fu_625_p4();
    void thread_tmp_8_fu_819_p4();
    void thread_tmp_9_fu_886_p3();
    void thread_tmp_V_4_fu_766_p3();
    void thread_tmp_V_fu_743_p2();
    void thread_tmp_s_fu_350_p3();
    void thread_trunc_ln556_fu_268_p1();
    void thread_trunc_ln565_fu_290_p1();
    void thread_trunc_ln583_fu_374_p1();
    void thread_trunc_ln586_fu_513_p1();
    void thread_trunc_ln738_fu_1024_p1();
    void thread_trunc_ln943_fu_797_p1();
    void thread_trunc_ln944_fu_806_p1();
    void thread_trunc_ln947_fu_810_p1();
    void thread_xor_ln203_fu_640_p2();
    void thread_xor_ln571_fu_407_p2();
    void thread_xor_ln581_fu_455_p2();
    void thread_xor_ln582_fu_421_p2();
    void thread_xor_ln585_fu_432_p2();
    void thread_xor_ln949_fu_893_p2();
    void thread_zext_ln203_1_fu_587_p1();
    void thread_zext_ln203_2_fu_591_p1();
    void thread_zext_ln203_3_fu_595_p1();
    void thread_zext_ln203_fu_574_p1();
    void thread_zext_ln461_fu_294_p1();
    void thread_zext_ln586_fu_504_p1();
    void thread_zext_ln947_fu_840_p1();
    void thread_zext_ln957_1_fu_928_p1();
    void thread_zext_ln958_1_fu_940_p1();
    void thread_zext_ln958_fu_936_p1();
    void thread_zext_ln961_fu_956_p1();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif