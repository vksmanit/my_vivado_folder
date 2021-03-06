// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.1
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "simple_vec_dot_product.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic simple_vec_dot_product::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic simple_vec_dot_product::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<9> simple_vec_dot_product::ap_ST_st1_fsm_0 = "1";
const sc_lv<9> simple_vec_dot_product::ap_ST_st2_fsm_1 = "10";
const sc_lv<9> simple_vec_dot_product::ap_ST_st3_fsm_2 = "100";
const sc_lv<9> simple_vec_dot_product::ap_ST_st4_fsm_3 = "1000";
const sc_lv<9> simple_vec_dot_product::ap_ST_st5_fsm_4 = "10000";
const sc_lv<9> simple_vec_dot_product::ap_ST_st6_fsm_5 = "100000";
const sc_lv<9> simple_vec_dot_product::ap_ST_st7_fsm_6 = "1000000";
const sc_lv<9> simple_vec_dot_product::ap_ST_st8_fsm_7 = "10000000";
const sc_lv<9> simple_vec_dot_product::ap_ST_st9_fsm_8 = "100000000";
const sc_lv<32> simple_vec_dot_product::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<1> simple_vec_dot_product::ap_const_lv1_1 = "1";
const sc_lv<32> simple_vec_dot_product::ap_const_lv32_1 = "1";
const sc_lv<1> simple_vec_dot_product::ap_const_lv1_0 = "0";
const sc_lv<32> simple_vec_dot_product::ap_const_lv32_2 = "10";
const sc_lv<32> simple_vec_dot_product::ap_const_lv32_7 = "111";
const sc_lv<3> simple_vec_dot_product::ap_const_lv3_0 = "000";
const sc_lv<32> simple_vec_dot_product::ap_const_lv32_8 = "1000";
const sc_lv<3> simple_vec_dot_product::ap_const_lv3_4 = "100";
const sc_lv<3> simple_vec_dot_product::ap_const_lv3_1 = "1";
const sc_lv<32> simple_vec_dot_product::ap_const_lv32_1F = "11111";
const sc_lv<32> simple_vec_dot_product::ap_const_lv32_3F = "111111";
const sc_lv<33> simple_vec_dot_product::ap_const_lv33_0 = "000000000000000000000000000000000";
const sc_lv<64> simple_vec_dot_product::ap_const_lv64_FFFFFFFF80000000 = "1111111111111111111111111111111110000000000000000000000000000000";
const sc_lv<32> simple_vec_dot_product::ap_const_lv32_7FFFFFFF = "1111111111111111111111111111111";
const sc_lv<32> simple_vec_dot_product::ap_const_lv32_80000000 = "10000000000000000000000000000000";

simple_vec_dot_product::simple_vec_dot_product(sc_module_name name) : sc_module(name), mVcdFile(0) {
    simple_vec_dot_product_mul_32s_32s_64_6_U1 = new simple_vec_dot_product_mul_32s_32s_64_6<1,6,32,32,64>("simple_vec_dot_product_mul_32s_32s_64_6_U1");
    simple_vec_dot_product_mul_32s_32s_64_6_U1->clk(ap_clk);
    simple_vec_dot_product_mul_32s_32s_64_6_U1->reset(ap_rst);
    simple_vec_dot_product_mul_32s_32s_64_6_U1->din0(b_q0);
    simple_vec_dot_product_mul_32s_32s_64_6_U1->din1(a_q0);
    simple_vec_dot_product_mul_32s_32s_64_6_U1->ce(ap_var_for_const0);
    simple_vec_dot_product_mul_32s_32s_64_6_U1->dout(grp_fu_111_p2);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_a_address0);
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );
    sensitive << ( tmp_fu_97_p1 );

    SC_METHOD(thread_a_ce0);
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );
    sensitive << ( exitcond_fu_85_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );
    sensitive << ( exitcond_fu_85_p2 );

    SC_METHOD(thread_ap_sig_102);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_24);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_57);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_76);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_87);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_cseq_ST_st1_fsm_0);
    sensitive << ( ap_sig_24 );

    SC_METHOD(thread_ap_sig_cseq_ST_st2_fsm_1);
    sensitive << ( ap_sig_57 );

    SC_METHOD(thread_ap_sig_cseq_ST_st3_fsm_2);
    sensitive << ( ap_sig_76 );

    SC_METHOD(thread_ap_sig_cseq_ST_st8_fsm_7);
    sensitive << ( ap_sig_87 );

    SC_METHOD(thread_ap_sig_cseq_ST_st9_fsm_8);
    sensitive << ( ap_sig_102 );

    SC_METHOD(thread_b_address0);
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );
    sensitive << ( tmp_fu_97_p1 );

    SC_METHOD(thread_b_ce0);
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );

    SC_METHOD(thread_exitcond_fu_85_p2);
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );
    sensitive << ( i0_reg_74 );

    SC_METHOD(thread_i0_1_fu_91_p2);
    sensitive << ( i0_reg_74 );

    SC_METHOD(thread_icmp_fu_127_p2);
    sensitive << ( ap_sig_cseq_ST_st8_fsm_7 );
    sensitive << ( tmp_4_fu_117_p4 );

    SC_METHOD(thread_out_r_address0);
    sensitive << ( tmp_reg_170 );
    sensitive << ( ap_sig_cseq_ST_st9_fsm_8 );

    SC_METHOD(thread_out_r_ce0);
    sensitive << ( ap_sig_cseq_ST_st9_fsm_8 );

    SC_METHOD(thread_out_r_d0);
    sensitive << ( ap_sig_cseq_ST_st9_fsm_8 );
    sensitive << ( tmp_3_fu_148_p2 );
    sensitive << ( phitmp_fu_141_p3 );
    sensitive << ( tmp_6_fu_138_p1 );

    SC_METHOD(thread_out_r_we0);
    sensitive << ( ap_sig_cseq_ST_st9_fsm_8 );

    SC_METHOD(thread_phitmp_fu_141_p3);
    sensitive << ( icmp_reg_201 );

    SC_METHOD(thread_tmp_3_fu_148_p2);
    sensitive << ( icmp_reg_201 );
    sensitive << ( tmp_5_fu_133_p2 );

    SC_METHOD(thread_tmp_4_fu_117_p4);
    sensitive << ( grp_fu_111_p2 );

    SC_METHOD(thread_tmp_5_fu_133_p2);
    sensitive << ( i1_reg_195 );
    sensitive << ( ap_sig_cseq_ST_st9_fsm_8 );

    SC_METHOD(thread_tmp_6_fu_138_p1);
    sensitive << ( i1_reg_195 );

    SC_METHOD(thread_tmp_fu_97_p1);
    sensitive << ( i0_reg_74 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( exitcond_fu_85_p2 );

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_clk.pos() );

    SC_THREAD(thread_ap_var_for_const0);

    ap_CS_fsm = "000000001";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "simple_vec_dot_product_sc_trace_" << apTFileNum ++;
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
    sc_trace(mVcdFile, ap_sig_24, "ap_sig_24");
    sc_trace(mVcdFile, i0_1_fu_91_p2, "i0_1_fu_91_p2");
    sc_trace(mVcdFile, i0_1_reg_165, "i0_1_reg_165");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st2_fsm_1, "ap_sig_cseq_ST_st2_fsm_1");
    sc_trace(mVcdFile, ap_sig_57, "ap_sig_57");
    sc_trace(mVcdFile, tmp_fu_97_p1, "tmp_fu_97_p1");
    sc_trace(mVcdFile, tmp_reg_170, "tmp_reg_170");
    sc_trace(mVcdFile, exitcond_fu_85_p2, "exitcond_fu_85_p2");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st3_fsm_2, "ap_sig_cseq_ST_st3_fsm_2");
    sc_trace(mVcdFile, ap_sig_76, "ap_sig_76");
    sc_trace(mVcdFile, grp_fu_111_p2, "grp_fu_111_p2");
    sc_trace(mVcdFile, i1_reg_195, "i1_reg_195");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st8_fsm_7, "ap_sig_cseq_ST_st8_fsm_7");
    sc_trace(mVcdFile, ap_sig_87, "ap_sig_87");
    sc_trace(mVcdFile, icmp_fu_127_p2, "icmp_fu_127_p2");
    sc_trace(mVcdFile, icmp_reg_201, "icmp_reg_201");
    sc_trace(mVcdFile, i0_reg_74, "i0_reg_74");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st9_fsm_8, "ap_sig_cseq_ST_st9_fsm_8");
    sc_trace(mVcdFile, ap_sig_102, "ap_sig_102");
    sc_trace(mVcdFile, tmp_4_fu_117_p4, "tmp_4_fu_117_p4");
    sc_trace(mVcdFile, tmp_5_fu_133_p2, "tmp_5_fu_133_p2");
    sc_trace(mVcdFile, tmp_3_fu_148_p2, "tmp_3_fu_148_p2");
    sc_trace(mVcdFile, phitmp_fu_141_p3, "phitmp_fu_141_p3");
    sc_trace(mVcdFile, tmp_6_fu_138_p1, "tmp_6_fu_138_p1");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
    mHdltvinHandle.open("simple_vec_dot_product.hdltvin.dat");
    mHdltvoutHandle.open("simple_vec_dot_product.hdltvout.dat");
}

simple_vec_dot_product::~simple_vec_dot_product() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
    delete simple_vec_dot_product_mul_32s_32s_64_6_U1;
}

void simple_vec_dot_product::thread_ap_var_for_const0() {
    ap_var_for_const0 = ap_const_logic_1;
}

void simple_vec_dot_product::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_st1_fsm_0;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st9_fsm_8.read())) {
        i0_reg_74 = i0_1_reg_165.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
                !esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0))) {
        i0_reg_74 = ap_const_lv3_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read())) {
        i0_1_reg_165 = i0_1_fu_91_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st8_fsm_7.read())) {
        i1_reg_195 = grp_fu_111_p2.read();
        icmp_reg_201 = icmp_fu_127_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && esl_seteq<1,1,1>(exitcond_fu_85_p2.read(), ap_const_lv1_0))) {
        tmp_reg_170 = tmp_fu_97_p1.read();
    }
}

void simple_vec_dot_product::thread_a_address0() {
    a_address0 =  (sc_lv<2>) (tmp_fu_97_p1.read());
}

void simple_vec_dot_product::thread_a_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read())) {
        a_ce0 = ap_const_logic_1;
    } else {
        a_ce0 = ap_const_logic_0;
    }
}

void simple_vec_dot_product::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && 
         !esl_seteq<1,1,1>(exitcond_fu_85_p2.read(), ap_const_lv1_0))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void simple_vec_dot_product::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void simple_vec_dot_product::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && 
         !esl_seteq<1,1,1>(exitcond_fu_85_p2.read(), ap_const_lv1_0))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void simple_vec_dot_product::thread_ap_sig_102() {
    ap_sig_102 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(8, 8));
}

void simple_vec_dot_product::thread_ap_sig_24() {
    ap_sig_24 = esl_seteq<1,1,1>(ap_CS_fsm.read().range(0, 0), ap_const_lv1_1);
}

void simple_vec_dot_product::thread_ap_sig_57() {
    ap_sig_57 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(1, 1));
}

void simple_vec_dot_product::thread_ap_sig_76() {
    ap_sig_76 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(2, 2));
}

void simple_vec_dot_product::thread_ap_sig_87() {
    ap_sig_87 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(7, 7));
}

void simple_vec_dot_product::thread_ap_sig_cseq_ST_st1_fsm_0() {
    if (ap_sig_24.read()) {
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_0;
    }
}

void simple_vec_dot_product::thread_ap_sig_cseq_ST_st2_fsm_1() {
    if (ap_sig_57.read()) {
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_0;
    }
}

void simple_vec_dot_product::thread_ap_sig_cseq_ST_st3_fsm_2() {
    if (ap_sig_76.read()) {
        ap_sig_cseq_ST_st3_fsm_2 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st3_fsm_2 = ap_const_logic_0;
    }
}

void simple_vec_dot_product::thread_ap_sig_cseq_ST_st8_fsm_7() {
    if (ap_sig_87.read()) {
        ap_sig_cseq_ST_st8_fsm_7 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st8_fsm_7 = ap_const_logic_0;
    }
}

void simple_vec_dot_product::thread_ap_sig_cseq_ST_st9_fsm_8() {
    if (ap_sig_102.read()) {
        ap_sig_cseq_ST_st9_fsm_8 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st9_fsm_8 = ap_const_logic_0;
    }
}

void simple_vec_dot_product::thread_b_address0() {
    b_address0 =  (sc_lv<2>) (tmp_fu_97_p1.read());
}

void simple_vec_dot_product::thread_b_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read())) {
        b_ce0 = ap_const_logic_1;
    } else {
        b_ce0 = ap_const_logic_0;
    }
}

void simple_vec_dot_product::thread_exitcond_fu_85_p2() {
    exitcond_fu_85_p2 = (!i0_reg_74.read().is_01() || !ap_const_lv3_4.is_01())? sc_lv<1>(): sc_lv<1>(i0_reg_74.read() == ap_const_lv3_4);
}

void simple_vec_dot_product::thread_i0_1_fu_91_p2() {
    i0_1_fu_91_p2 = (!i0_reg_74.read().is_01() || !ap_const_lv3_1.is_01())? sc_lv<3>(): (sc_biguint<3>(i0_reg_74.read()) + sc_biguint<3>(ap_const_lv3_1));
}

void simple_vec_dot_product::thread_icmp_fu_127_p2() {
    icmp_fu_127_p2 = (!tmp_4_fu_117_p4.read().is_01() || !ap_const_lv33_0.is_01())? sc_lv<1>(): (sc_bigint<33>(tmp_4_fu_117_p4.read()) > sc_bigint<33>(ap_const_lv33_0));
}

void simple_vec_dot_product::thread_out_r_address0() {
    out_r_address0 =  (sc_lv<2>) (tmp_reg_170.read());
}

void simple_vec_dot_product::thread_out_r_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st9_fsm_8.read())) {
        out_r_ce0 = ap_const_logic_1;
    } else {
        out_r_ce0 = ap_const_logic_0;
    }
}

void simple_vec_dot_product::thread_out_r_d0() {
    out_r_d0 = (!tmp_3_fu_148_p2.read()[0].is_01())? sc_lv<32>(): ((tmp_3_fu_148_p2.read()[0].to_bool())? phitmp_fu_141_p3.read(): tmp_6_fu_138_p1.read());
}

void simple_vec_dot_product::thread_out_r_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st9_fsm_8.read()))) {
        out_r_we0 = ap_const_logic_1;
    } else {
        out_r_we0 = ap_const_logic_0;
    }
}

void simple_vec_dot_product::thread_phitmp_fu_141_p3() {
    phitmp_fu_141_p3 = (!icmp_reg_201.read()[0].is_01())? sc_lv<32>(): ((icmp_reg_201.read()[0].to_bool())? ap_const_lv32_7FFFFFFF: ap_const_lv32_80000000);
}

void simple_vec_dot_product::thread_tmp_3_fu_148_p2() {
    tmp_3_fu_148_p2 = (icmp_reg_201.read() | tmp_5_fu_133_p2.read());
}

void simple_vec_dot_product::thread_tmp_4_fu_117_p4() {
    tmp_4_fu_117_p4 = grp_fu_111_p2.read().range(63, 31);
}

void simple_vec_dot_product::thread_tmp_5_fu_133_p2() {
    tmp_5_fu_133_p2 = (!i1_reg_195.read().is_01() || !ap_const_lv64_FFFFFFFF80000000.is_01())? sc_lv<1>(): (sc_bigint<64>(i1_reg_195.read()) < sc_bigint<64>(ap_const_lv64_FFFFFFFF80000000));
}

void simple_vec_dot_product::thread_tmp_6_fu_138_p1() {
    tmp_6_fu_138_p1 = i1_reg_195.read().range(32-1, 0);
}

void simple_vec_dot_product::thread_tmp_fu_97_p1() {
    tmp_fu_97_p1 = esl_zext<64,3>(i0_reg_74.read());
}

void simple_vec_dot_product::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if (!esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0)) {
                ap_NS_fsm = ap_ST_st2_fsm_1;
            } else {
                ap_NS_fsm = ap_ST_st1_fsm_0;
            }
            break;
        case 2 : 
            if (!esl_seteq<1,1,1>(exitcond_fu_85_p2.read(), ap_const_lv1_0)) {
                ap_NS_fsm = ap_ST_st1_fsm_0;
            } else {
                ap_NS_fsm = ap_ST_st3_fsm_2;
            }
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_st4_fsm_3;
            break;
        case 8 : 
            ap_NS_fsm = ap_ST_st5_fsm_4;
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
            ap_NS_fsm = ap_ST_st2_fsm_1;
            break;
        default : 
            ap_NS_fsm = "XXXXXXXXX";
            break;
    }
}

void simple_vec_dot_product::thread_hdltv_gen() {
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

