############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
############################################################
open_project multiplication_vivado
set_top multiplication
add_files buildInfo.mat
add_files codeInfo.mat
add_files multiplication.c
add_files multiplication.h
add_files multiplication_initialize.c
add_files multiplication_initialize.h
add_files multiplication_ref.rsp
add_files multiplication_rtw.mk
add_files multiplication_terminate.c
add_files multiplication_terminate.h
add_files multiplication_types.h
add_files rtGetInf.c
add_files rtGetInf.h
add_files rtGetNaN.c
add_files rtGetNaN.h
add_files rt_nonfinite.c
add_files rt_nonfinite.h
add_files rtw_proj.tmw
add_files rtwtypes.h
add_files tags
add_files -tb multiplication_tb.c
open_solution "solution1"
set_part {xc6vlx240tff1156-1} -tool vivado
create_clock -period 10 -name default
#source "./multiplication_vivado/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level all -rtl vhdl -tool modelsim
export_design -evaluate vhdl -format ip_catalog
