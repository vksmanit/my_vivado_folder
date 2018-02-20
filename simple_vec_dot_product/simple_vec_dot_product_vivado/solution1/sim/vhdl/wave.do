set designtopgroup "Design Top Signals"
add wave -group $designtopgroup
set clockgroup "Clock"
add wave -group $designtopgroup -group $clockgroup
add wave -group $designtopgroup -group $clockgroup /apatb_simple_vec_dot_product_top/AESL_inst_simple_vec_dot_product/ap_clk
set resetgroup "Reset"
add wave -group $designtopgroup -group $resetgroup
add wave -group $designtopgroup -group $resetgroup /apatb_simple_vec_dot_product_top/AESL_inst_simple_vec_dot_product/ap_rst
set blocksiggroup "Block-level IO Handshake"
add wave -group $designtopgroup -group $blocksiggroup
add wave -group $designtopgroup -group $blocksiggroup /apatb_simple_vec_dot_product_top/AESL_inst_simple_vec_dot_product/ap_start
add wave -group $designtopgroup -group $blocksiggroup /apatb_simple_vec_dot_product_top/AESL_inst_simple_vec_dot_product/ap_done
add wave -group $designtopgroup -group $blocksiggroup /apatb_simple_vec_dot_product_top/AESL_inst_simple_vec_dot_product/ap_idle
add wave -group $designtopgroup -group $blocksiggroup /apatb_simple_vec_dot_product_top/AESL_inst_simple_vec_dot_product/ap_ready
set cinputgroup "C Inputs"
add wave -group $designtopgroup -group $cinputgroup
set a_group a(memory)
add wave -group $designtopgroup -group $cinputgroup -group $a_group
add wave -group $designtopgroup -group $cinputgroup -group $a_group -radix hex /apatb_simple_vec_dot_product_top/AESL_inst_simple_vec_dot_product/a_address0
add wave -group $designtopgroup -group $cinputgroup -group $a_group -color #ffff00 -radix hex /apatb_simple_vec_dot_product_top/AESL_inst_simple_vec_dot_product/a_ce0
add wave -group $designtopgroup -group $cinputgroup -group $a_group -radix hex /apatb_simple_vec_dot_product_top/AESL_inst_simple_vec_dot_product/a_q0
set b_group b(memory)
add wave -group $designtopgroup -group $cinputgroup -group $b_group
add wave -group $designtopgroup -group $cinputgroup -group $b_group -radix hex /apatb_simple_vec_dot_product_top/AESL_inst_simple_vec_dot_product/b_address0
add wave -group $designtopgroup -group $cinputgroup -group $b_group -color #ffff00 -radix hex /apatb_simple_vec_dot_product_top/AESL_inst_simple_vec_dot_product/b_ce0
add wave -group $designtopgroup -group $cinputgroup -group $b_group -radix hex /apatb_simple_vec_dot_product_top/AESL_inst_simple_vec_dot_product/b_q0
set coutputgroup "C Outputs"
add wave -group $designtopgroup -group $coutputgroup
set out_group out(memory)
add wave -group $designtopgroup -group $coutputgroup -group $out_group
add wave -group $designtopgroup -group $coutputgroup -group $out_group -radix hex /apatb_simple_vec_dot_product_top/AESL_inst_simple_vec_dot_product/out_r_address0
add wave -group $designtopgroup -group $coutputgroup -group $out_group -color #ffff00 -radix hex /apatb_simple_vec_dot_product_top/AESL_inst_simple_vec_dot_product/out_r_ce0
add wave -group $designtopgroup -group $coutputgroup -group $out_group -color #ffff00 -radix hex /apatb_simple_vec_dot_product_top/AESL_inst_simple_vec_dot_product/out_r_we0
add wave -group $designtopgroup -group $coutputgroup -group $out_group -radix hex /apatb_simple_vec_dot_product_top/AESL_inst_simple_vec_dot_product/out_r_d0
set testbenchgroup "Test Bench Signals"
add wave -group $testbenchgroup
set tbcinputgroup "C Inputs"
add wave -group $testbenchgroup -group $tbcinputgroup
set tb_a_group a(memory)
add wave -group $testbenchgroup -group $tbcinputgroup -group $tb_a_group
add wave -group $testbenchgroup -group $tbcinputgroup -group $tb_a_group -radix hex /apatb_simple_vec_dot_product_top/a_address0
add wave -group $testbenchgroup -group $tbcinputgroup -group $tb_a_group -color #ffff00 -radix hex /apatb_simple_vec_dot_product_top/a_ce0
add wave -group $testbenchgroup -group $tbcinputgroup -group $tb_a_group -radix hex /apatb_simple_vec_dot_product_top/a_q0
set tb_b_group b(memory)
add wave -group $testbenchgroup -group $tbcinputgroup -group $tb_b_group
add wave -group $testbenchgroup -group $tbcinputgroup -group $tb_b_group -radix hex /apatb_simple_vec_dot_product_top/b_address0
add wave -group $testbenchgroup -group $tbcinputgroup -group $tb_b_group -color #ffff00 -radix hex /apatb_simple_vec_dot_product_top/b_ce0
add wave -group $testbenchgroup -group $tbcinputgroup -group $tb_b_group -radix hex /apatb_simple_vec_dot_product_top/b_q0
set tbcoutputgroup "C Outputs"
add wave -group $testbenchgroup -group $tbcoutputgroup
set tb_out_group out(memory)
add wave -group $testbenchgroup -group $tbcoutputgroup -group $tb_out_group
add wave -group $testbenchgroup -group $tbcoutputgroup -group $tb_out_group -radix hex /apatb_simple_vec_dot_product_top/out_r_address0
add wave -group $testbenchgroup -group $tbcoutputgroup -group $tb_out_group -color #ffff00 -radix hex /apatb_simple_vec_dot_product_top/out_r_ce0
add wave -group $testbenchgroup -group $tbcoutputgroup -group $tb_out_group -color #ffff00 -radix hex /apatb_simple_vec_dot_product_top/out_r_we0
add wave -group $testbenchgroup -group $tbcoutputgroup -group $tb_out_group -radix hex /apatb_simple_vec_dot_product_top/out_r_d0
set tbinternalsiggroup "Internal Signals"
add wave -group $testbenchgroup -group $tbinternalsiggroup
set tb_simstatus_group "Simulation Status"
add wave -group $testbenchgroup -group $tbinternalsiggroup -group $tb_simstatus_group
add wave -group $testbenchgroup -group $tbinternalsiggroup -group $tb_simstatus_group -radix hex /apatb_simple_vec_dot_product_top/AUTOTB_TRANSACTION_NUM
add wave -group $testbenchgroup -group $tbinternalsiggroup -group $tb_simstatus_group -radix hex /apatb_simple_vec_dot_product_top/ready_cnt
add wave -group $testbenchgroup -group $tbinternalsiggroup -group $tb_simstatus_group -radix hex /apatb_simple_vec_dot_product_top/done_cnt
set tb_portdepth_group "Port Depth"
add wave -group $testbenchgroup -group $tbinternalsiggroup -group $tb_portdepth_group
add wave -group $testbenchgroup -group $tbinternalsiggroup -group $tb_portdepth_group -radix hex /apatb_simple_vec_dot_product_top/LENGTH_a
add wave -group $testbenchgroup -group $tbinternalsiggroup -group $tb_portdepth_group -radix hex /apatb_simple_vec_dot_product_top/LENGTH_b
add wave -group $testbenchgroup -group $tbinternalsiggroup -group $tb_portdepth_group -radix hex /apatb_simple_vec_dot_product_top/LENGTH_out_r
