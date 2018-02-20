// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.1
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef __matrix_mul_dmul_64ns_64ns_64_6_max_dsp__HH__
#define __matrix_mul_dmul_64ns_64ns_64_6_max_dsp__HH__
#include "ACMP_dmul.h"
#include <systemc>

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int dout_WIDTH>
SC_MODULE(matrix_mul_dmul_64ns_64ns_64_6_max_dsp) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    ACMP_dmul<ID, 6, din0_WIDTH, din1_WIDTH, dout_WIDTH> ACMP_dmul_U;

    SC_CTOR(matrix_mul_dmul_64ns_64ns_64_6_max_dsp):  ACMP_dmul_U ("ACMP_dmul_U") {
        ACMP_dmul_U.clk(clk);
        ACMP_dmul_U.reset(reset);
        ACMP_dmul_U.ce(ce);
        ACMP_dmul_U.din0(din0);
        ACMP_dmul_U.din1(din1);
        ACMP_dmul_U.dout(dout);

    }

};

#endif //
