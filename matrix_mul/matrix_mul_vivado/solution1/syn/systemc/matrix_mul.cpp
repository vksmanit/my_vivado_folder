// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.1
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "matrix_mul.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic matrix_mul::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic matrix_mul::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<16> matrix_mul::ap_ST_st1_fsm_0 = "1";
const sc_lv<16> matrix_mul::ap_ST_st2_fsm_1 = "10";
const sc_lv<16> matrix_mul::ap_ST_st3_fsm_2 = "100";
const sc_lv<16> matrix_mul::ap_ST_st4_fsm_3 = "1000";
const sc_lv<16> matrix_mul::ap_ST_st5_fsm_4 = "10000";
const sc_lv<16> matrix_mul::ap_ST_st6_fsm_5 = "100000";
const sc_lv<16> matrix_mul::ap_ST_st7_fsm_6 = "1000000";
const sc_lv<16> matrix_mul::ap_ST_st8_fsm_7 = "10000000";
const sc_lv<16> matrix_mul::ap_ST_st9_fsm_8 = "100000000";
const sc_lv<16> matrix_mul::ap_ST_st10_fsm_9 = "1000000000";
const sc_lv<16> matrix_mul::ap_ST_st11_fsm_10 = "10000000000";
const sc_lv<16> matrix_mul::ap_ST_st12_fsm_11 = "100000000000";
const sc_lv<16> matrix_mul::ap_ST_st13_fsm_12 = "1000000000000";
const sc_lv<16> matrix_mul::ap_ST_st14_fsm_13 = "10000000000000";
const sc_lv<16> matrix_mul::ap_ST_st15_fsm_14 = "100000000000000";
const sc_lv<16> matrix_mul::ap_ST_st16_fsm_15 = "1000000000000000";
const sc_lv<32> matrix_mul::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<1> matrix_mul::ap_const_lv1_1 = "1";
const sc_lv<32> matrix_mul::ap_const_lv32_1 = "1";
const sc_lv<32> matrix_mul::ap_const_lv32_2 = "10";
const sc_lv<1> matrix_mul::ap_const_lv1_0 = "0";
const sc_lv<32> matrix_mul::ap_const_lv32_3 = "11";
const sc_lv<32> matrix_mul::ap_const_lv32_4 = "100";
const sc_lv<32> matrix_mul::ap_const_lv32_A = "1010";
const sc_lv<32> matrix_mul::ap_const_lv32_F = "1111";
const sc_lv<2> matrix_mul::ap_const_lv2_0 = "00";
const sc_lv<64> matrix_mul::ap_const_lv64_0 = "0000000000000000000000000000000000000000000000000000000000000000";
const sc_lv<32> matrix_mul::ap_const_lv32_B = "1011";
const sc_lv<32> matrix_mul::ap_const_lv32_5 = "101";
const sc_lv<2> matrix_mul::ap_const_lv2_2 = "10";
const sc_lv<2> matrix_mul::ap_const_lv2_1 = "1";

matrix_mul::matrix_mul(sc_module_name name) : sc_module(name), mVcdFile(0) {
    matrix_mul_dadd_64ns_64ns_64_5_full_dsp_U1 = new matrix_mul_dadd_64ns_64ns_64_5_full_dsp<1,5,64,64,64>("matrix_mul_dadd_64ns_64ns_64_5_full_dsp_U1");
    matrix_mul_dadd_64ns_64ns_64_5_full_dsp_U1->clk(ap_clk);
    matrix_mul_dadd_64ns_64ns_64_5_full_dsp_U1->reset(ap_rst);
    matrix_mul_dadd_64ns_64ns_64_5_full_dsp_U1->din0(storemerge_reg_84);
    matrix_mul_dadd_64ns_64ns_64_5_full_dsp_U1->din1(tmp_s_reg_251);
    matrix_mul_dadd_64ns_64ns_64_5_full_dsp_U1->ce(ap_var_for_const0);
    matrix_mul_dadd_64ns_64ns_64_5_full_dsp_U1->dout(grp_fu_108_p2);
    matrix_mul_dmul_64ns_64ns_64_6_max_dsp_U2 = new matrix_mul_dmul_64ns_64ns_64_6_max_dsp<1,6,64,64,64>("matrix_mul_dmul_64ns_64ns_64_6_max_dsp_U2");
    matrix_mul_dmul_64ns_64ns_64_6_max_dsp_U2->clk(ap_clk);
    matrix_mul_dmul_64ns_64ns_64_6_max_dsp_U2->reset(ap_rst);
    matrix_mul_dmul_64ns_64ns_64_6_max_dsp_U2->din0(a_load_reg_241);
    matrix_mul_dmul_64ns_64ns_64_6_max_dsp_U2->din1(b_load_reg_246);
    matrix_mul_dmul_64ns_64ns_64_6_max_dsp_U2->ce(ap_var_for_const0);
    matrix_mul_dmul_64ns_64ns_64_6_max_dsp_U2->dout(grp_fu_113_p2);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_a_address0);
    sensitive << ( ap_sig_cseq_ST_st4_fsm_3 );
    sensitive << ( tmp_7_fu_182_p1 );

    SC_METHOD(thread_a_ce0);
    sensitive << ( ap_sig_cseq_ST_st4_fsm_3 );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );
    sensitive << ( exitcond2_fu_117_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );
    sensitive << ( exitcond2_fu_117_p2 );

    SC_METHOD(thread_ap_sig_105);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_115);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_124);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_157);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_166);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_31);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_64);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_73);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_90);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_cseq_ST_st11_fsm_10);
    sensitive << ( ap_sig_115 );

    SC_METHOD(thread_ap_sig_cseq_ST_st12_fsm_11);
    sensitive << ( ap_sig_157 );

    SC_METHOD(thread_ap_sig_cseq_ST_st16_fsm_15);
    sensitive << ( ap_sig_124 );

    SC_METHOD(thread_ap_sig_cseq_ST_st1_fsm_0);
    sensitive << ( ap_sig_31 );

    SC_METHOD(thread_ap_sig_cseq_ST_st2_fsm_1);
    sensitive << ( ap_sig_64 );

    SC_METHOD(thread_ap_sig_cseq_ST_st3_fsm_2);
    sensitive << ( ap_sig_73 );

    SC_METHOD(thread_ap_sig_cseq_ST_st4_fsm_3);
    sensitive << ( ap_sig_90 );

    SC_METHOD(thread_ap_sig_cseq_ST_st5_fsm_4);
    sensitive << ( ap_sig_105 );

    SC_METHOD(thread_ap_sig_cseq_ST_st6_fsm_5);
    sensitive << ( ap_sig_166 );

    SC_METHOD(thread_b_address0);
    sensitive << ( ap_sig_cseq_ST_st4_fsm_3 );
    sensitive << ( tmp_9_fu_192_p1 );

    SC_METHOD(thread_b_ce0);
    sensitive << ( ap_sig_cseq_ST_st4_fsm_3 );

    SC_METHOD(thread_exitcond1_fu_129_p2);
    sensitive << ( ap_sig_cseq_ST_st3_fsm_2 );
    sensitive << ( i1_reg_73 );

    SC_METHOD(thread_exitcond2_fu_117_p2);
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );
    sensitive << ( i0_reg_61 );

    SC_METHOD(thread_exitcond_fu_158_p2);
    sensitive << ( ap_sig_cseq_ST_st4_fsm_3 );
    sensitive << ( i2_reg_97 );

    SC_METHOD(thread_i0_1_fu_123_p2);
    sensitive << ( i0_reg_61 );

    SC_METHOD(thread_i1_1_fu_135_p2);
    sensitive << ( i1_reg_73 );

    SC_METHOD(thread_i2_1_fu_164_p2);
    sensitive << ( i2_reg_97 );

    SC_METHOD(thread_out_r_address0);
    sensitive << ( out_addr_reg_218 );
    sensitive << ( ap_sig_cseq_ST_st4_fsm_3 );

    SC_METHOD(thread_out_r_ce0);
    sensitive << ( ap_sig_cseq_ST_st4_fsm_3 );

    SC_METHOD(thread_out_r_d0);
    sensitive << ( ap_sig_cseq_ST_st4_fsm_3 );
    sensitive << ( storemerge_reg_84 );

    SC_METHOD(thread_out_r_we0);
    sensitive << ( ap_sig_cseq_ST_st4_fsm_3 );

    SC_METHOD(thread_tmp_1_fu_147_p2);
    sensitive << ( tmp_fu_141_p2 );
    sensitive << ( i0_reg_61 );

    SC_METHOD(thread_tmp_2_fu_153_p1);
    sensitive << ( tmp_1_fu_147_p2 );

    SC_METHOD(thread_tmp_3_fu_170_p2);
    sensitive << ( i2_reg_97 );

    SC_METHOD(thread_tmp_6_fu_176_p2);
    sensitive << ( i0_reg_61 );
    sensitive << ( tmp_3_fu_170_p2 );

    SC_METHOD(thread_tmp_7_fu_182_p1);
    sensitive << ( tmp_6_fu_176_p2 );

    SC_METHOD(thread_tmp_8_fu_187_p2);
    sensitive << ( tmp_reg_213 );
    sensitive << ( i2_reg_97 );

    SC_METHOD(thread_tmp_9_fu_192_p1);
    sensitive << ( tmp_8_fu_187_p2 );

    SC_METHOD(thread_tmp_fu_141_p2);
    sensitive << ( i1_reg_73 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( exitcond1_fu_129_p2 );
    sensitive << ( exitcond_fu_158_p2 );
    sensitive << ( exitcond2_fu_117_p2 );

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_clk.pos() );

    SC_THREAD(thread_ap_var_for_const0);

    ap_CS_fsm = "0000000000000001";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "matrix_mul_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, a_address0, "(port)a_address0");
    sc_trace(mVcdFile, a_ce0, "(port)a_ce0");
    sc_trace(mVcdFile, a_q0, "(port)a_q0");
    sc_trace(mVcdFile, b_address0, "(port)b_address0");
    sc_trace(mVcdFile, b_ce0, "(port)b_ce0");
    sc_trace(mVcdFile, b_q0, "(port)b_q0");
    sc_trace(mVcdFile, out_r_address0, "(port)out_r_address0");
    sc_trace(mVcdFile, out_r_ce0, "(port)out_r_ce0");
    sc_trace(mVcdFile, out_r_we0, "(port)out_r_we0");
    sc_trace(mVcdFile, out_r_d0, "(port)out_r_d0");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st1_fsm_0, "ap_sig_cseq_ST_st1_fsm_0");
    sc_trace(mVcdFile, ap_sig_31, "ap_sig_31");
    sc_trace(mVcdFile, i0_1_fu_123_p2, "i0_1_fu_123_p2");
    sc_trace(mVcdFile, i0_1_reg_200, "i0_1_reg_200");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st2_fsm_1, "ap_sig_cseq_ST_st2_fsm_1");
    sc_trace(mVcdFile, ap_sig_64, "ap_sig_64");
    sc_trace(mVcdFile, i1_1_fu_135_p2, "i1_1_fu_135_p2");
    sc_trace(mVcdFile, i1_1_reg_208, "i1_1_reg_208");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st3_fsm_2, "ap_sig_cseq_ST_st3_fsm_2");
    sc_trace(mVcdFile, ap_sig_73, "ap_sig_73");
    sc_trace(mVcdFile, tmp_fu_141_p2, "tmp_fu_141_p2");
    sc_trace(mVcdFile, tmp_reg_213, "tmp_reg_213");
    sc_trace(mVcdFile, exitcond1_fu_129_p2, "exitcond1_fu_129_p2");
    sc_trace(mVcdFile, out_addr_reg_218, "out_addr_reg_218");
    sc_trace(mVcdFile, i2_1_fu_164_p2, "i2_1_fu_164_p2");
    sc_trace(mVcdFile, i2_1_reg_226, "i2_1_reg_226");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st4_fsm_3, "ap_sig_cseq_ST_st4_fsm_3");
    sc_trace(mVcdFile, ap_sig_90, "ap_sig_90");
    sc_trace(mVcdFile, exitcond_fu_158_p2, "exitcond_fu_158_p2");
    sc_trace(mVcdFile, a_load_reg_241, "a_load_reg_241");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st5_fsm_4, "ap_sig_cseq_ST_st5_fsm_4");
    sc_trace(mVcdFile, ap_sig_105, "ap_sig_105");
    sc_trace(mVcdFile, b_load_reg_246, "b_load_reg_246");
    sc_trace(mVcdFile, grp_fu_113_p2, "grp_fu_113_p2");
    sc_trace(mVcdFile, tmp_s_reg_251, "tmp_s_reg_251");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st11_fsm_10, "ap_sig_cseq_ST_st11_fsm_10");
    sc_trace(mVcdFile, ap_sig_115, "ap_sig_115");
    sc_trace(mVcdFile, grp_fu_108_p2, "grp_fu_108_p2");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st16_fsm_15, "ap_sig_cseq_ST_st16_fsm_15");
    sc_trace(mVcdFile, ap_sig_124, "ap_sig_124");
    sc_trace(mVcdFile, i0_reg_61, "i0_reg_61");
    sc_trace(mVcdFile, i1_reg_73, "i1_reg_73");
    sc_trace(mVcdFile, exitcond2_fu_117_p2, "exitcond2_fu_117_p2");
    sc_trace(mVcdFile, storemerge_reg_84, "storemerge_reg_84");
    sc_trace(mVcdFile, i2_reg_97, "i2_reg_97");
    sc_trace(mVcdFile, tmp_2_fu_153_p1, "tmp_2_fu_153_p1");
    sc_trace(mVcdFile, tmp_7_fu_182_p1, "tmp_7_fu_182_p1");
    sc_trace(mVcdFile, tmp_9_fu_192_p1, "tmp_9_fu_192_p1");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st12_fsm_11, "ap_sig_cseq_ST_st12_fsm_11");
    sc_trace(mVcdFile, ap_sig_157, "ap_sig_157");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st6_fsm_5, "ap_sig_cseq_ST_st6_fsm_5");
    sc_trace(mVcdFile, ap_sig_166, "ap_sig_166");
    sc_trace(mVcdFile, tmp_1_fu_147_p2, "tmp_1_fu_147_p2");
    sc_trace(mVcdFile, tmp_3_fu_170_p2, "tmp_3_fu_170_p2");
    sc_trace(mVcdFile, tmp_6_fu_176_p2, "tmp_6_fu_176_p2");
    sc_trace(mVcdFile, tmp_8_fu_187_p2, "tmp_8_fu_187_p2");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
    mHdltvinHandle.open("matrix_mul.hdltvin.dat");
    mHdltvoutHandle.open("matrix_mul.hdltvout.dat");
}

matrix_mul::~matrix_mul() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
    delete matrix_mul_dadd_64ns_64ns_64_5_full_dsp_U1;
    delete matrix_mul_dmul_64ns_64ns_64_6_max_dsp_U2;
}

void matrix_mul::thread_ap_var_for_const0() {
    ap_var_for_const0 = ap_const_logic_1;
}

void matrix_mul::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_st1_fsm_0;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st3_fsm_2.read()) && 
         !esl_seteq<1,1,1>(exitcond1_fu_129_p2.read(), ap_const_lv1_0))) {
        i0_reg_61 = i0_1_reg_200.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
                !esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0))) {
        i0_reg_61 = ap_const_lv2_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st4_fsm_3.read()) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_158_p2.read()))) {
        i1_reg_73 = i1_1_reg_208.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_fu_117_p2.read()))) {
        i1_reg_73 = ap_const_lv2_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st16_fsm_15.read())) {
        i2_reg_97 = i2_1_reg_226.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st3_fsm_2.read()) && 
                esl_seteq<1,1,1>(exitcond1_fu_129_p2.read(), ap_const_lv1_0))) {
        i2_reg_97 = ap_const_lv2_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st16_fsm_15.read())) {
        storemerge_reg_84 = grp_fu_108_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st3_fsm_2.read()) && 
                esl_seteq<1,1,1>(exitcond1_fu_129_p2.read(), ap_const_lv1_0))) {
        storemerge_reg_84 = ap_const_lv64_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st5_fsm_4.read())) {
        a_load_reg_241 = a_q0.read();
        b_load_reg_246 = b_q0.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read())) {
        i0_1_reg_200 = i0_1_fu_123_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st3_fsm_2.read())) {
        i1_1_reg_208 = i1_1_fu_135_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st4_fsm_3.read())) {
        i2_1_reg_226 = i2_1_fu_164_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st3_fsm_2.read()) && esl_seteq<1,1,1>(exitcond1_fu_129_p2.read(), ap_const_lv1_0))) {
        out_addr_reg_218 =  (sc_lv<2>) (tmp_2_fu_153_p1.read());
        tmp_reg_213 = tmp_fu_141_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st11_fsm_10.read())) {
        tmp_s_reg_251 = grp_fu_113_p2.read();
    }
}

void matrix_mul::thread_a_address0() {
    a_address0 =  (sc_lv<2>) (tmp_7_fu_182_p1.read());
}

void matrix_mul::thread_a_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st4_fsm_3.read())) {
        a_ce0 = ap_const_logic_1;
    } else {
        a_ce0 = ap_const_logic_0;
    }
}

void matrix_mul::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_fu_117_p2.read()))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void matrix_mul::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void matrix_mul::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_fu_117_p2.read()))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void matrix_mul::thread_ap_sig_105() {
    ap_sig_105 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(4, 4));
}

void matrix_mul::thread_ap_sig_115() {
    ap_sig_115 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(10, 10));
}

void matrix_mul::thread_ap_sig_124() {
    ap_sig_124 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(15, 15));
}

void matrix_mul::thread_ap_sig_157() {
    ap_sig_157 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(11, 11));
}

void matrix_mul::thread_ap_sig_166() {
    ap_sig_166 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(5, 5));
}

void matrix_mul::thread_ap_sig_31() {
    ap_sig_31 = esl_seteq<1,1,1>(ap_CS_fsm.read().range(0, 0), ap_const_lv1_1);
}

void matrix_mul::thread_ap_sig_64() {
    ap_sig_64 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(1, 1));
}

void matrix_mul::thread_ap_sig_73() {
    ap_sig_73 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(2, 2));
}

void matrix_mul::thread_ap_sig_90() {
    ap_sig_90 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(3, 3));
}

void matrix_mul::thread_ap_sig_cseq_ST_st11_fsm_10() {
    if (ap_sig_115.read()) {
        ap_sig_cseq_ST_st11_fsm_10 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st11_fsm_10 = ap_const_logic_0;
    }
}

void matrix_mul::thread_ap_sig_cseq_ST_st12_fsm_11() {
    if (ap_sig_157.read()) {
        ap_sig_cseq_ST_st12_fsm_11 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st12_fsm_11 = ap_const_logic_0;
    }
}

void matrix_mul::thread_ap_sig_cseq_ST_st16_fsm_15() {
    if (ap_sig_124.read()) {
        ap_sig_cseq_ST_st16_fsm_15 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st16_fsm_15 = ap_const_logic_0;
    }
}

void matrix_mul::thread_ap_sig_cseq_ST_st1_fsm_0() {
    if (ap_sig_31.read()) {
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_0;
    }
}

void matrix_mul::thread_ap_sig_cseq_ST_st2_fsm_1() {
    if (ap_sig_64.read()) {
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_0;
    }
}

void matrix_mul::thread_ap_sig_cseq_ST_st3_fsm_2() {
    if (ap_sig_73.read()) {
        ap_sig_cseq_ST_st3_fsm_2 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st3_fsm_2 = ap_const_logic_0;
    }
}

void matrix_mul::thread_ap_sig_cseq_ST_st4_fsm_3() {
    if (ap_sig_90.read()) {
        ap_sig_cseq_ST_st4_fsm_3 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st4_fsm_3 = ap_const_logic_0;
    }
}

void matrix_mul::thread_ap_sig_cseq_ST_st5_fsm_4() {
    if (ap_sig_105.read()) {
        ap_sig_cseq_ST_st5_fsm_4 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st5_fsm_4 = ap_const_logic_0;
    }
}

void matrix_mul::thread_ap_sig_cseq_ST_st6_fsm_5() {
    if (ap_sig_166.read()) {
        ap_sig_cseq_ST_st6_fsm_5 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st6_fsm_5 = ap_const_logic_0;
    }
}

void matrix_mul::thread_b_address0() {
    b_address0 =  (sc_lv<2>) (tmp_9_fu_192_p1.read());
}

void matrix_mul::thread_b_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st4_fsm_3.read())) {
        b_ce0 = ap_const_logic_1;
    } else {
        b_ce0 = ap_const_logic_0;
    }
}

void matrix_mul::thread_exitcond1_fu_129_p2() {
    exitcond1_fu_129_p2 = (!i1_reg_73.read().is_01() || !ap_const_lv2_2.is_01())? sc_lv<1>(): sc_lv<1>(i1_reg_73.read() == ap_const_lv2_2);
}

void matrix_mul::thread_exitcond2_fu_117_p2() {
    exitcond2_fu_117_p2 = (!i0_reg_61.read().is_01() || !ap_const_lv2_2.is_01())? sc_lv<1>(): sc_lv<1>(i0_reg_61.read() == ap_const_lv2_2);
}

void matrix_mul::thread_exitcond_fu_158_p2() {
    exitcond_fu_158_p2 = (!i2_reg_97.read().is_01() || !ap_const_lv2_2.is_01())? sc_lv<1>(): sc_lv<1>(i2_reg_97.read() == ap_const_lv2_2);
}

void matrix_mul::thread_i0_1_fu_123_p2() {
    i0_1_fu_123_p2 = (!i0_reg_61.read().is_01() || !ap_const_lv2_1.is_01())? sc_lv<2>(): (sc_biguint<2>(i0_reg_61.read()) + sc_biguint<2>(ap_const_lv2_1));
}

void matrix_mul::thread_i1_1_fu_135_p2() {
    i1_1_fu_135_p2 = (!i1_reg_73.read().is_01() || !ap_const_lv2_1.is_01())? sc_lv<2>(): (sc_biguint<2>(i1_reg_73.read()) + sc_biguint<2>(ap_const_lv2_1));
}

void matrix_mul::thread_i2_1_fu_164_p2() {
    i2_1_fu_164_p2 = (!i2_reg_97.read().is_01() || !ap_const_lv2_1.is_01())? sc_lv<2>(): (sc_biguint<2>(i2_reg_97.read()) + sc_biguint<2>(ap_const_lv2_1));
}

void matrix_mul::thread_out_r_address0() {
    out_r_address0 = out_addr_reg_218.read();
}

void matrix_mul::thread_out_r_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st4_fsm_3.read())) {
        out_r_ce0 = ap_const_logic_1;
    } else {
        out_r_ce0 = ap_const_logic_0;
    }
}

void matrix_mul::thread_out_r_d0() {
    out_r_d0 = storemerge_reg_84.read();
}

void matrix_mul::thread_out_r_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st4_fsm_3.read()))) {
        out_r_we0 = ap_const_logic_1;
    } else {
        out_r_we0 = ap_const_logic_0;
    }
}

void matrix_mul::thread_tmp_1_fu_147_p2() {
    tmp_1_fu_147_p2 = (!i0_reg_61.read().is_01() || !tmp_fu_141_p2.read().is_01())? sc_lv<2>(): (sc_biguint<2>(i0_reg_61.read()) + sc_biguint<2>(tmp_fu_141_p2.read()));
}

void matrix_mul::thread_tmp_2_fu_153_p1() {
    tmp_2_fu_153_p1 = esl_zext<64,2>(tmp_1_fu_147_p2.read());
}

void matrix_mul::thread_tmp_3_fu_170_p2() {
    tmp_3_fu_170_p2 = (!ap_const_lv2_1.is_01())? sc_lv<2>(): i2_reg_97.read() << (unsigned short)ap_const_lv2_1.to_uint();
}

void matrix_mul::thread_tmp_6_fu_176_p2() {
    tmp_6_fu_176_p2 = (!i0_reg_61.read().is_01() || !tmp_3_fu_170_p2.read().is_01())? sc_lv<2>(): (sc_biguint<2>(i0_reg_61.read()) + sc_biguint<2>(tmp_3_fu_170_p2.read()));
}

void matrix_mul::thread_tmp_7_fu_182_p1() {
    tmp_7_fu_182_p1 = esl_zext<64,2>(tmp_6_fu_176_p2.read());
}

void matrix_mul::thread_tmp_8_fu_187_p2() {
    tmp_8_fu_187_p2 = (!tmp_reg_213.read().is_01() || !i2_reg_97.read().is_01())? sc_lv<2>(): (sc_biguint<2>(tmp_reg_213.read()) + sc_biguint<2>(i2_reg_97.read()));
}

void matrix_mul::thread_tmp_9_fu_192_p1() {
    tmp_9_fu_192_p1 = esl_zext<64,2>(tmp_8_fu_187_p2.read());
}

void matrix_mul::thread_tmp_fu_141_p2() {
    tmp_fu_141_p2 = (!ap_const_lv2_1.is_01())? sc_lv<2>(): i1_reg_73.read() << (unsigned short)ap_const_lv2_1.to_uint();
}

void matrix_mul::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if (!esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0)) {
                ap_NS_fsm = ap_ST_st2_fsm_1;
            } else {
                ap_NS_fsm = ap_ST_st1_fsm_0;
            }
            break;
        case 2 : 
            if (!esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_fu_117_p2.read())) {
                ap_NS_fsm = ap_ST_st1_fsm_0;
            } else {
                ap_NS_fsm = ap_ST_st3_fsm_2;
            }
            break;
        case 4 : 
            if (esl_seteq<1,1,1>(exitcond1_fu_129_p2.read(), ap_const_lv1_0)) {
                ap_NS_fsm = ap_ST_st4_fsm_3;
            } else {
                ap_NS_fsm = ap_ST_st2_fsm_1;
            }
            break;
        case 8 : 
            if (esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_fu_158_p2.read())) {
                ap_NS_fsm = ap_ST_st5_fsm_4;
            } else {
                ap_NS_fsm = ap_ST_st3_fsm_2;
            }
            break;
        case 16 : 
            ap_NS_fsm = ap_ST_st6_fsm_5;
            break;
        case 32 : 
            ap_NS_fsm = ap_ST_st7_fsm_6;
            break;
        case 64 : 
            ap_NS_fsm = ap_ST_st8_fsm_7;
            break;
        case 128 : 
            ap_NS_fsm = ap_ST_st9_fsm_8;
            break;
        case 256 : 
            ap_NS_fsm = ap_ST_st10_fsm_9;
            break;
        case 512 : 
            ap_NS_fsm = ap_ST_st11_fsm_10;
            break;
        case 1024 : 
            ap_NS_fsm = ap_ST_st12_fsm_11;
            break;
        case 2048 : 
            ap_NS_fsm = ap_ST_st13_fsm_12;
            break;
        case 4096 : 
            ap_NS_fsm = ap_ST_st14_fsm_13;
            break;
        case 8192 : 
            ap_NS_fsm = ap_ST_st15_fsm_14;
            break;
        case 16384 : 
            ap_NS_fsm = ap_ST_st16_fsm_15;
            break;
        case 32768 : 
            ap_NS_fsm = ap_ST_st4_fsm_3;
            break;
        default : 
            ap_NS_fsm = "XXXXXXXXXXXXXXXX";
            break;
    }
}

void matrix_mul::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"ap_rst\" :  \"" << ap_rst.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ap_start\" :  \"" << ap_start.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"ap_done\" :  \"" << ap_done.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_idle\" :  \"" << ap_idle.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_ready\" :  \"" << ap_ready.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"a_address0\" :  \"" << a_address0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"a_ce0\" :  \"" << a_ce0.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"a_q0\" :  \"" << a_q0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"b_address0\" :  \"" << b_address0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"b_ce0\" :  \"" << b_ce0.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"b_q0\" :  \"" << b_q0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"out_r_address0\" :  \"" << out_r_address0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"out_r_ce0\" :  \"" << out_r_ce0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"out_r_we0\" :  \"" << out_r_we0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"out_r_d0\" :  \"" << out_r_d0.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

