// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.1
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="simple_vec_dot_product,hls_ip_2016_1,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc6vlx240tff1156-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.520000,HLS_SYN_LAT=33,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=4,HLS_SYN_FF=83,HLS_SYN_LUT=111}" *)

module simple_vec_dot_product (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        a_address0,
        a_ce0,
        a_q0,
        b_address0,
        b_ce0,
        b_q0,
        out_r_address0,
        out_r_ce0,
        out_r_we0,
        out_r_d0
);

parameter    ap_ST_st1_fsm_0 = 9'b1;
parameter    ap_ST_st2_fsm_1 = 9'b10;
parameter    ap_ST_st3_fsm_2 = 9'b100;
parameter    ap_ST_st4_fsm_3 = 9'b1000;
parameter    ap_ST_st5_fsm_4 = 9'b10000;
parameter    ap_ST_st6_fsm_5 = 9'b100000;
parameter    ap_ST_st7_fsm_6 = 9'b1000000;
parameter    ap_ST_st8_fsm_7 = 9'b10000000;
parameter    ap_ST_st9_fsm_8 = 9'b100000000;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv32_7 = 32'b111;
parameter    ap_const_lv3_0 = 3'b000;
parameter    ap_const_lv32_8 = 32'b1000;
parameter    ap_const_lv3_4 = 3'b100;
parameter    ap_const_lv3_1 = 3'b1;
parameter    ap_const_lv32_1F = 32'b11111;
parameter    ap_const_lv32_3F = 32'b111111;
parameter    ap_const_lv33_0 = 33'b000000000000000000000000000000000;
parameter    ap_const_lv64_FFFFFFFF80000000 = 64'b1111111111111111111111111111111110000000000000000000000000000000;
parameter    ap_const_lv32_7FFFFFFF = 32'b1111111111111111111111111111111;
parameter    ap_const_lv32_80000000 = 32'b10000000000000000000000000000000;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [1:0] a_address0;
output   a_ce0;
input  [31:0] a_q0;
output  [1:0] b_address0;
output   b_ce0;
input  [31:0] b_q0;
output  [1:0] out_r_address0;
output   out_r_ce0;
output   out_r_we0;
output  [31:0] out_r_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg a_ce0;
reg b_ce0;
reg out_r_ce0;
reg out_r_we0;

(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_24;
wire   [2:0] i0_1_fu_91_p2;
reg   [2:0] i0_1_reg_165;
reg    ap_sig_cseq_ST_st2_fsm_1;
reg    ap_sig_57;
wire   [63:0] tmp_fu_97_p1;
reg   [63:0] tmp_reg_170;
wire   [0:0] exitcond_fu_85_p2;
reg    ap_sig_cseq_ST_st3_fsm_2;
reg    ap_sig_76;
wire   [63:0] grp_fu_111_p2;
reg   [63:0] i1_reg_195;
reg    ap_sig_cseq_ST_st8_fsm_7;
reg    ap_sig_87;
wire   [0:0] icmp_fu_127_p2;
reg   [0:0] icmp_reg_201;
reg   [2:0] i0_reg_74;
reg    ap_sig_cseq_ST_st9_fsm_8;
reg    ap_sig_102;
wire   [32:0] tmp_4_fu_117_p4;
wire   [0:0] tmp_5_fu_133_p2;
wire   [0:0] tmp_3_fu_148_p2;
wire   [31:0] phitmp_fu_141_p3;
wire   [31:0] tmp_6_fu_138_p1;
reg   [8:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 9'b1;
end

simple_vec_dot_product_mul_32s_32s_64_6 #(
    .ID( 1 ),
    .NUM_STAGE( 6 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 64 ))
simple_vec_dot_product_mul_32s_32s_64_6_U1(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(b_q0),
    .din1(a_q0),
    .ce(1'b1),
    .dout(grp_fu_111_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_st1_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st9_fsm_8)) begin
        i0_reg_74 <= i0_1_reg_165;
    end else if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == 1'b0))) begin
        i0_reg_74 <= ap_const_lv3_0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        i0_1_reg_165 <= i0_1_fu_91_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st8_fsm_7)) begin
        i1_reg_195 <= grp_fu_111_p2;
        icmp_reg_201 <= icmp_fu_127_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond_fu_85_p2 == 1'b0))) begin
        tmp_reg_170[2 : 0] <= tmp_fu_97_p1[2 : 0];
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        a_ce0 = 1'b1;
    end else begin
        a_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond_fu_85_p2 == 1'b0))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_start) & (1'b1 == ap_sig_cseq_ST_st1_fsm_0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond_fu_85_p2 == 1'b0))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_24) begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_57) begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_76) begin
        ap_sig_cseq_ST_st3_fsm_2 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st3_fsm_2 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_87) begin
        ap_sig_cseq_ST_st8_fsm_7 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st8_fsm_7 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_102) begin
        ap_sig_cseq_ST_st9_fsm_8 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st9_fsm_8 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        b_ce0 = 1'b1;
    end else begin
        b_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st9_fsm_8)) begin
        out_r_ce0 = 1'b1;
    end else begin
        out_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st9_fsm_8)) begin
        out_r_we0 = 1'b1;
    end else begin
        out_r_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : begin
            if (~(ap_start == 1'b0)) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end
        end
        ap_ST_st2_fsm_1 : begin
            if (~(exitcond_fu_85_p2 == 1'b0)) begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end else begin
                ap_NS_fsm = ap_ST_st3_fsm_2;
            end
        end
        ap_ST_st3_fsm_2 : begin
            ap_NS_fsm = ap_ST_st4_fsm_3;
        end
        ap_ST_st4_fsm_3 : begin
            ap_NS_fsm = ap_ST_st5_fsm_4;
        end
        ap_ST_st5_fsm_4 : begin
            ap_NS_fsm = ap_ST_st6_fsm_5;
        end
        ap_ST_st6_fsm_5 : begin
            ap_NS_fsm = ap_ST_st7_fsm_6;
        end
        ap_ST_st7_fsm_6 : begin
            ap_NS_fsm = ap_ST_st8_fsm_7;
        end
        ap_ST_st8_fsm_7 : begin
            ap_NS_fsm = ap_ST_st9_fsm_8;
        end
        ap_ST_st9_fsm_8 : begin
            ap_NS_fsm = ap_ST_st2_fsm_1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign a_address0 = tmp_fu_97_p1;

always @ (*) begin
    ap_sig_102 = (1'b1 == ap_CS_fsm[ap_const_lv32_8]);
end

always @ (*) begin
    ap_sig_24 = (ap_CS_fsm[ap_const_lv32_0] == 1'b1);
end

always @ (*) begin
    ap_sig_57 = (1'b1 == ap_CS_fsm[ap_const_lv32_1]);
end

always @ (*) begin
    ap_sig_76 = (1'b1 == ap_CS_fsm[ap_const_lv32_2]);
end

always @ (*) begin
    ap_sig_87 = (1'b1 == ap_CS_fsm[ap_const_lv32_7]);
end

assign b_address0 = tmp_fu_97_p1;

assign exitcond_fu_85_p2 = ((i0_reg_74 == ap_const_lv3_4) ? 1'b1 : 1'b0);

assign i0_1_fu_91_p2 = (i0_reg_74 + ap_const_lv3_1);

assign icmp_fu_127_p2 = (($signed(tmp_4_fu_117_p4) > $signed(33'b000000000000000000000000000000000)) ? 1'b1 : 1'b0);

assign out_r_address0 = tmp_reg_170;

assign out_r_d0 = ((tmp_3_fu_148_p2[0:0] === 1'b1) ? phitmp_fu_141_p3 : tmp_6_fu_138_p1);

assign phitmp_fu_141_p3 = ((icmp_reg_201[0:0] === 1'b1) ? ap_const_lv32_7FFFFFFF : ap_const_lv32_80000000);

assign tmp_3_fu_148_p2 = (icmp_reg_201 | tmp_5_fu_133_p2);

assign tmp_4_fu_117_p4 = {{grp_fu_111_p2[ap_const_lv32_3F : ap_const_lv32_1F]}};

assign tmp_5_fu_133_p2 = (($signed(i1_reg_195) < $signed(64'b1111111111111111111111111111111110000000000000000000000000000000)) ? 1'b1 : 1'b0);

assign tmp_6_fu_138_p1 = i1_reg_195[31:0];

assign tmp_fu_97_p1 = i0_reg_74;

always @ (posedge ap_clk) begin
    tmp_reg_170[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000000;
end

endmodule //simple_vec_dot_product
