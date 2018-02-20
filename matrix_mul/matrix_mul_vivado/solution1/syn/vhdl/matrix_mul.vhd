-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2016.1
-- Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity matrix_mul is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    a_address0 : OUT STD_LOGIC_VECTOR (1 downto 0);
    a_ce0 : OUT STD_LOGIC;
    a_q0 : IN STD_LOGIC_VECTOR (63 downto 0);
    b_address0 : OUT STD_LOGIC_VECTOR (1 downto 0);
    b_ce0 : OUT STD_LOGIC;
    b_q0 : IN STD_LOGIC_VECTOR (63 downto 0);
    out_r_address0 : OUT STD_LOGIC_VECTOR (1 downto 0);
    out_r_ce0 : OUT STD_LOGIC;
    out_r_we0 : OUT STD_LOGIC;
    out_r_d0 : OUT STD_LOGIC_VECTOR (63 downto 0) );
end;


architecture behav of matrix_mul is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "matrix_mul,hls_ip_2016_1,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=1,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc6vlx240tff1156-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=7.570000,HLS_SYN_LAT=117,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=14,HLS_SYN_FF=1050,HLS_SYN_LUT=1117}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_st1_fsm_0 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000001";
    constant ap_ST_st2_fsm_1 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000010";
    constant ap_ST_st3_fsm_2 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000100";
    constant ap_ST_st4_fsm_3 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000001000";
    constant ap_ST_st5_fsm_4 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000010000";
    constant ap_ST_st6_fsm_5 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000100000";
    constant ap_ST_st7_fsm_6 : STD_LOGIC_VECTOR (15 downto 0) := "0000000001000000";
    constant ap_ST_st8_fsm_7 : STD_LOGIC_VECTOR (15 downto 0) := "0000000010000000";
    constant ap_ST_st9_fsm_8 : STD_LOGIC_VECTOR (15 downto 0) := "0000000100000000";
    constant ap_ST_st10_fsm_9 : STD_LOGIC_VECTOR (15 downto 0) := "0000001000000000";
    constant ap_ST_st11_fsm_10 : STD_LOGIC_VECTOR (15 downto 0) := "0000010000000000";
    constant ap_ST_st12_fsm_11 : STD_LOGIC_VECTOR (15 downto 0) := "0000100000000000";
    constant ap_ST_st13_fsm_12 : STD_LOGIC_VECTOR (15 downto 0) := "0001000000000000";
    constant ap_ST_st14_fsm_13 : STD_LOGIC_VECTOR (15 downto 0) := "0010000000000000";
    constant ap_ST_st15_fsm_14 : STD_LOGIC_VECTOR (15 downto 0) := "0100000000000000";
    constant ap_ST_st16_fsm_15 : STD_LOGIC_VECTOR (15 downto 0) := "1000000000000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001010";
    constant ap_const_lv32_F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001111";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv32_B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001011";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_sig_cseq_ST_st1_fsm_0 : STD_LOGIC;
    signal ap_sig_31 : BOOLEAN;
    signal i0_1_fu_123_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal i0_1_reg_200 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_sig_cseq_ST_st2_fsm_1 : STD_LOGIC;
    signal ap_sig_64 : BOOLEAN;
    signal i1_1_fu_135_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal i1_1_reg_208 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_sig_cseq_ST_st3_fsm_2 : STD_LOGIC;
    signal ap_sig_73 : BOOLEAN;
    signal tmp_fu_141_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_reg_213 : STD_LOGIC_VECTOR (1 downto 0);
    signal exitcond1_fu_129_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal out_addr_reg_218 : STD_LOGIC_VECTOR (1 downto 0);
    signal i2_1_fu_164_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal i2_1_reg_226 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_sig_cseq_ST_st4_fsm_3 : STD_LOGIC;
    signal ap_sig_90 : BOOLEAN;
    signal exitcond_fu_158_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal a_load_reg_241 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_sig_cseq_ST_st5_fsm_4 : STD_LOGIC;
    signal ap_sig_105 : BOOLEAN;
    signal b_load_reg_246 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_fu_113_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_s_reg_251 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_sig_cseq_ST_st11_fsm_10 : STD_LOGIC;
    signal ap_sig_115 : BOOLEAN;
    signal grp_fu_108_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_sig_cseq_ST_st16_fsm_15 : STD_LOGIC;
    signal ap_sig_124 : BOOLEAN;
    signal i0_reg_61 : STD_LOGIC_VECTOR (1 downto 0);
    signal i1_reg_73 : STD_LOGIC_VECTOR (1 downto 0);
    signal exitcond2_fu_117_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal storemerge_reg_84 : STD_LOGIC_VECTOR (63 downto 0);
    signal i2_reg_97 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_2_fu_153_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_7_fu_182_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_9_fu_192_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_sig_cseq_ST_st12_fsm_11 : STD_LOGIC;
    signal ap_sig_157 : BOOLEAN;
    signal ap_sig_cseq_ST_st6_fsm_5 : STD_LOGIC;
    signal ap_sig_166 : BOOLEAN;
    signal tmp_1_fu_147_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_3_fu_170_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_6_fu_176_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_8_fu_187_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (15 downto 0);

    component matrix_mul_dadd_64ns_64ns_64_5_full_dsp IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (63 downto 0);
        din1 : IN STD_LOGIC_VECTOR (63 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (63 downto 0) );
    end component;


    component matrix_mul_dmul_64ns_64ns_64_6_max_dsp IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (63 downto 0);
        din1 : IN STD_LOGIC_VECTOR (63 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (63 downto 0) );
    end component;



begin
    matrix_mul_dadd_64ns_64ns_64_5_full_dsp_U1 : component matrix_mul_dadd_64ns_64ns_64_5_full_dsp
    generic map (
        ID => 1,
        NUM_STAGE => 5,
        din0_WIDTH => 64,
        din1_WIDTH => 64,
        dout_WIDTH => 64)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => storemerge_reg_84,
        din1 => tmp_s_reg_251,
        ce => ap_const_logic_1,
        dout => grp_fu_108_p2);

    matrix_mul_dmul_64ns_64ns_64_6_max_dsp_U2 : component matrix_mul_dmul_64ns_64ns_64_6_max_dsp
    generic map (
        ID => 1,
        NUM_STAGE => 6,
        din0_WIDTH => 64,
        din1_WIDTH => 64,
        dout_WIDTH => 64)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => a_load_reg_241,
        din1 => b_load_reg_246,
        ce => ap_const_logic_1,
        dout => grp_fu_113_p2);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_st1_fsm_0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    i0_reg_61_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2) and not((exitcond1_fu_129_p2 = ap_const_lv1_0)))) then 
                i0_reg_61 <= i0_1_reg_200;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not((ap_start = ap_const_logic_0)))) then 
                i0_reg_61 <= ap_const_lv2_0;
            end if; 
        end if;
    end process;

    i1_reg_73_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3) and not((ap_const_lv1_0 = exitcond_fu_158_p2)))) then 
                i1_reg_73 <= i1_1_reg_208;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and (ap_const_lv1_0 = exitcond2_fu_117_p2))) then 
                i1_reg_73 <= ap_const_lv2_0;
            end if; 
        end if;
    end process;

    i2_reg_97_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st16_fsm_15)) then 
                i2_reg_97 <= i2_1_reg_226;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2) and (exitcond1_fu_129_p2 = ap_const_lv1_0))) then 
                i2_reg_97 <= ap_const_lv2_0;
            end if; 
        end if;
    end process;

    storemerge_reg_84_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st16_fsm_15)) then 
                storemerge_reg_84 <= grp_fu_108_p2;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2) and (exitcond1_fu_129_p2 = ap_const_lv1_0))) then 
                storemerge_reg_84 <= ap_const_lv64_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st5_fsm_4)) then
                a_load_reg_241 <= a_q0;
                b_load_reg_246 <= b_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1)) then
                i0_1_reg_200 <= i0_1_fu_123_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2)) then
                i1_1_reg_208 <= i1_1_fu_135_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3)) then
                i2_1_reg_226 <= i2_1_fu_164_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2) and (exitcond1_fu_129_p2 = ap_const_lv1_0))) then
                out_addr_reg_218 <= tmp_2_fu_153_p1(2 - 1 downto 0);
                    tmp_reg_213(1) <= tmp_fu_141_p2(1);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st11_fsm_10)) then
                tmp_s_reg_251 <= grp_fu_113_p2;
            end if;
        end if;
    end process;
    tmp_reg_213(0) <= '0';

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, exitcond1_fu_129_p2, exitcond_fu_158_p2, exitcond2_fu_117_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_st1_fsm_0 => 
                if (not((ap_start = ap_const_logic_0))) then
                    ap_NS_fsm <= ap_ST_st2_fsm_1;
                else
                    ap_NS_fsm <= ap_ST_st1_fsm_0;
                end if;
            when ap_ST_st2_fsm_1 => 
                if (not((ap_const_lv1_0 = exitcond2_fu_117_p2))) then
                    ap_NS_fsm <= ap_ST_st1_fsm_0;
                else
                    ap_NS_fsm <= ap_ST_st3_fsm_2;
                end if;
            when ap_ST_st3_fsm_2 => 
                if ((exitcond1_fu_129_p2 = ap_const_lv1_0)) then
                    ap_NS_fsm <= ap_ST_st4_fsm_3;
                else
                    ap_NS_fsm <= ap_ST_st2_fsm_1;
                end if;
            when ap_ST_st4_fsm_3 => 
                if ((ap_const_lv1_0 = exitcond_fu_158_p2)) then
                    ap_NS_fsm <= ap_ST_st5_fsm_4;
                else
                    ap_NS_fsm <= ap_ST_st3_fsm_2;
                end if;
            when ap_ST_st5_fsm_4 => 
                ap_NS_fsm <= ap_ST_st6_fsm_5;
            when ap_ST_st6_fsm_5 => 
                ap_NS_fsm <= ap_ST_st7_fsm_6;
            when ap_ST_st7_fsm_6 => 
                ap_NS_fsm <= ap_ST_st8_fsm_7;
            when ap_ST_st8_fsm_7 => 
                ap_NS_fsm <= ap_ST_st9_fsm_8;
            when ap_ST_st9_fsm_8 => 
                ap_NS_fsm <= ap_ST_st10_fsm_9;
            when ap_ST_st10_fsm_9 => 
                ap_NS_fsm <= ap_ST_st11_fsm_10;
            when ap_ST_st11_fsm_10 => 
                ap_NS_fsm <= ap_ST_st12_fsm_11;
            when ap_ST_st12_fsm_11 => 
                ap_NS_fsm <= ap_ST_st13_fsm_12;
            when ap_ST_st13_fsm_12 => 
                ap_NS_fsm <= ap_ST_st14_fsm_13;
            when ap_ST_st14_fsm_13 => 
                ap_NS_fsm <= ap_ST_st15_fsm_14;
            when ap_ST_st15_fsm_14 => 
                ap_NS_fsm <= ap_ST_st16_fsm_15;
            when ap_ST_st16_fsm_15 => 
                ap_NS_fsm <= ap_ST_st4_fsm_3;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXXXXXXXX";
        end case;
    end process;
    a_address0 <= tmp_7_fu_182_p1(2 - 1 downto 0);

    a_ce0_assign_proc : process(ap_sig_cseq_ST_st4_fsm_3)
    begin
        if ((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3)) then 
            a_ce0 <= ap_const_logic_1;
        else 
            a_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_sig_cseq_ST_st2_fsm_1, exitcond2_fu_117_p2)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and not((ap_const_lv1_0 = exitcond2_fu_117_p2)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_sig_cseq_ST_st1_fsm_0)
    begin
        if (((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_sig_cseq_ST_st2_fsm_1, exitcond2_fu_117_p2)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and not((ap_const_lv1_0 = exitcond2_fu_117_p2)))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_105_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_105 <= (ap_const_lv1_1 = ap_CS_fsm(4 downto 4));
    end process;


    ap_sig_115_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_115 <= (ap_const_lv1_1 = ap_CS_fsm(10 downto 10));
    end process;


    ap_sig_124_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_124 <= (ap_const_lv1_1 = ap_CS_fsm(15 downto 15));
    end process;


    ap_sig_157_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_157 <= (ap_const_lv1_1 = ap_CS_fsm(11 downto 11));
    end process;


    ap_sig_166_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_166 <= (ap_const_lv1_1 = ap_CS_fsm(5 downto 5));
    end process;


    ap_sig_31_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_31 <= (ap_CS_fsm(0 downto 0) = ap_const_lv1_1);
    end process;


    ap_sig_64_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_64 <= (ap_const_lv1_1 = ap_CS_fsm(1 downto 1));
    end process;


    ap_sig_73_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_73 <= (ap_const_lv1_1 = ap_CS_fsm(2 downto 2));
    end process;


    ap_sig_90_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_90 <= (ap_const_lv1_1 = ap_CS_fsm(3 downto 3));
    end process;


    ap_sig_cseq_ST_st11_fsm_10_assign_proc : process(ap_sig_115)
    begin
        if (ap_sig_115) then 
            ap_sig_cseq_ST_st11_fsm_10 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st11_fsm_10 <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_cseq_ST_st12_fsm_11_assign_proc : process(ap_sig_157)
    begin
        if (ap_sig_157) then 
            ap_sig_cseq_ST_st12_fsm_11 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st12_fsm_11 <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_cseq_ST_st16_fsm_15_assign_proc : process(ap_sig_124)
    begin
        if (ap_sig_124) then 
            ap_sig_cseq_ST_st16_fsm_15 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st16_fsm_15 <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_cseq_ST_st1_fsm_0_assign_proc : process(ap_sig_31)
    begin
        if (ap_sig_31) then 
            ap_sig_cseq_ST_st1_fsm_0 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st1_fsm_0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_cseq_ST_st2_fsm_1_assign_proc : process(ap_sig_64)
    begin
        if (ap_sig_64) then 
            ap_sig_cseq_ST_st2_fsm_1 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st2_fsm_1 <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_cseq_ST_st3_fsm_2_assign_proc : process(ap_sig_73)
    begin
        if (ap_sig_73) then 
            ap_sig_cseq_ST_st3_fsm_2 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st3_fsm_2 <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_cseq_ST_st4_fsm_3_assign_proc : process(ap_sig_90)
    begin
        if (ap_sig_90) then 
            ap_sig_cseq_ST_st4_fsm_3 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st4_fsm_3 <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_cseq_ST_st5_fsm_4_assign_proc : process(ap_sig_105)
    begin
        if (ap_sig_105) then 
            ap_sig_cseq_ST_st5_fsm_4 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st5_fsm_4 <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_cseq_ST_st6_fsm_5_assign_proc : process(ap_sig_166)
    begin
        if (ap_sig_166) then 
            ap_sig_cseq_ST_st6_fsm_5 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st6_fsm_5 <= ap_const_logic_0;
        end if; 
    end process;

    b_address0 <= tmp_9_fu_192_p1(2 - 1 downto 0);

    b_ce0_assign_proc : process(ap_sig_cseq_ST_st4_fsm_3)
    begin
        if ((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3)) then 
            b_ce0 <= ap_const_logic_1;
        else 
            b_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    exitcond1_fu_129_p2 <= "1" when (i1_reg_73 = ap_const_lv2_2) else "0";
    exitcond2_fu_117_p2 <= "1" when (i0_reg_61 = ap_const_lv2_2) else "0";
    exitcond_fu_158_p2 <= "1" when (i2_reg_97 = ap_const_lv2_2) else "0";
    i0_1_fu_123_p2 <= std_logic_vector(unsigned(i0_reg_61) + unsigned(ap_const_lv2_1));
    i1_1_fu_135_p2 <= std_logic_vector(unsigned(i1_reg_73) + unsigned(ap_const_lv2_1));
    i2_1_fu_164_p2 <= std_logic_vector(unsigned(i2_reg_97) + unsigned(ap_const_lv2_1));
    out_r_address0 <= out_addr_reg_218;

    out_r_ce0_assign_proc : process(ap_sig_cseq_ST_st4_fsm_3)
    begin
        if ((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3)) then 
            out_r_ce0 <= ap_const_logic_1;
        else 
            out_r_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    out_r_d0 <= storemerge_reg_84;

    out_r_we0_assign_proc : process(ap_sig_cseq_ST_st4_fsm_3)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3))) then 
            out_r_we0 <= ap_const_logic_1;
        else 
            out_r_we0 <= ap_const_logic_0;
        end if; 
    end process;

    tmp_1_fu_147_p2 <= std_logic_vector(unsigned(i0_reg_61) + unsigned(tmp_fu_141_p2));
    tmp_2_fu_153_p1 <= std_logic_vector(resize(unsigned(tmp_1_fu_147_p2),64));
    tmp_3_fu_170_p2 <= std_logic_vector(shift_left(unsigned(i2_reg_97),to_integer(unsigned('0' & ap_const_lv2_1(2-1 downto 0)))));
    tmp_6_fu_176_p2 <= std_logic_vector(unsigned(i0_reg_61) + unsigned(tmp_3_fu_170_p2));
    tmp_7_fu_182_p1 <= std_logic_vector(resize(unsigned(tmp_6_fu_176_p2),64));
    tmp_8_fu_187_p2 <= std_logic_vector(unsigned(tmp_reg_213) + unsigned(i2_reg_97));
    tmp_9_fu_192_p1 <= std_logic_vector(resize(unsigned(tmp_8_fu_187_p2),64));
    tmp_fu_141_p2 <= std_logic_vector(shift_left(unsigned(i1_reg_73),to_integer(unsigned('0' & ap_const_lv2_1(2-1 downto 0)))));
end behav;