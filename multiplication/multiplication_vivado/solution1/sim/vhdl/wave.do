set designtopgroup "Design Top Signals"
add wave -group $designtopgroup
set clockgroup "Clock"
add wave -group $designtopgroup -group $clockgroup
add wave -group $designtopgroup -group $clockgroup /apatb_multiplication_top/AESL_inst_multiplication/ap_clk
set resetgroup "Reset"
add wave -group $designtopgroup -group $resetgroup
add wave -group $designtopgroup -group $resetgroup /apatb_multiplication_top/AESL_inst_multiplication/ap_rst
set blocksiggroup "Block-level IO Handshake"
add wave -group $designtopgroup -group $blocksiggroup
add wave -group $designtopgroup -group $blocksiggroup /apatb_multiplication_top/AESL_inst_multiplication/ap_start
add wave -group $designtopgroup -group $blocksiggroup /apatb_multiplication_top/AESL_inst_multiplication/ap_done
add wave -group $designtopgroup -group $blocksiggroup /apatb_multiplication_top/AESL_inst_multiplication/ap_idle
add wave -group $designtopgroup -group $blocksiggroup /apatb_multiplication_top/AESL_inst_multiplication/ap_ready
set cinputgroup "C Inputs"
add wave -group $designtopgroup -group $cinputgroup
set a_group a(wire)
add wave -group $designtopgroup -group $cinputgroup -group $a_group
add wave -group $designtopgroup -group $cinputgroup -group $a_group -radix hex /apatb_multiplication_top/AESL_inst_multiplication/a
set b_group b(wire)
add wave -group $designtopgroup -group $cinputgroup -group $b_group
add wave -group $designtopgroup -group $cinputgroup -group $b_group -radix hex /apatb_multiplication_top/AESL_inst_multiplication/b
set coutputgroup "C Outputs"
add wave -group $designtopgroup -group $coutputgroup
set return_group return(wire)
add wave -group $designtopgroup -group $coutputgroup -group $return_group
add wave -group $designtopgroup -group $coutputgroup -group $return_group -radix hex /apatb_multiplication_top/AESL_inst_multiplication/ap_return
set testbenchgroup "Test Bench Signals"
add wave -group $testbenchgroup
set tbcinputgroup "C Inputs"
add wave -group $testbenchgroup -group $tbcinputgroup
set tb_a_group a(wire)
add wave -group $testbenchgroup -group $tbcinputgroup -group $tb_a_group
add wave -group $testbenchgroup -group $tbcinputgroup -group $tb_a_group -radix hex /apatb_multiplication_top/a
set tb_b_group b(wire)
add wave -group $testbenchgroup -group $tbcinputgroup -group $tb_b_group
add wave -group $testbenchgroup -group $tbcinputgroup -group $tb_b_group -radix hex /apatb_multiplication_top/b
set tbcoutputgroup "C Outputs"
add wave -group $testbenchgroup -group $tbcoutputgroup
set tb_return_group return(wire)
add wave -group $testbenchgroup -group $tbcoutputgroup -group $tb_return_group
add wave -group $testbenchgroup -group $tbcoutputgroup -group $tb_return_group -radix hex /apatb_multiplication_top/ap_return
set tbinternalsiggroup "Internal Signals"
add wave -group $testbenchgroup -group $tbinternalsiggroup
set tb_simstatus_group "Simulation Status"
add wave -group $testbenchgroup -group $tbinternalsiggroup -group $tb_simstatus_group
add wave -group $testbenchgroup -group $tbinternalsiggroup -group $tb_simstatus_group -radix hex /apatb_multiplication_top/AUTOTB_TRANSACTION_NUM
add wave -group $testbenchgroup -group $tbinternalsiggroup -group $tb_simstatus_group -radix hex /apatb_multiplication_top/ready_cnt
add wave -group $testbenchgroup -group $tbinternalsiggroup -group $tb_simstatus_group -radix hex /apatb_multiplication_top/done_cnt
set tb_portdepth_group "Port Depth"
add wave -group $testbenchgroup -group $tbinternalsiggroup -group $tb_portdepth_group
add wave -group $testbenchgroup -group $tbinternalsiggroup -group $tb_portdepth_group -radix hex /apatb_multiplication_top/LENGTH_a
add wave -group $testbenchgroup -group $tbinternalsiggroup -group $tb_portdepth_group -radix hex /apatb_multiplication_top/LENGTH_b
add wave -group $testbenchgroup -group $tbinternalsiggroup -group $tb_portdepth_group -radix hex /apatb_multiplication_top/LENGTH_ap_return
