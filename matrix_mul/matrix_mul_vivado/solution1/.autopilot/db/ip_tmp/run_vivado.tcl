create_project prj -part xc6vlx240tff1156-1 -force
set_property target_language vhdl [current_project]
set vivado_ver [version -short]
source "/home/vipinsoni/MTP/my_vivado_folder/matrix_mul/matrix_mul_vivado/solution1/syn/vhdl/matrix_mul_ap_dadd_3_full_dsp_64_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips matrix_mul_ap_dadd_3_full_dsp_64]]
}
source "/home/vipinsoni/MTP/my_vivado_folder/matrix_mul/matrix_mul_vivado/solution1/syn/vhdl/matrix_mul_ap_dmul_4_max_dsp_64_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips matrix_mul_ap_dmul_4_max_dsp_64]]
}
