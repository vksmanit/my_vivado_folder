############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
############################################################
open_project matrix_mul_vivado
add_files buildInfo.mat
add_files codeInfo.mat
add_files matrix_mul.a
add_files matrix_mul.c
add_files matrix_mul.h
add_files matrix_mul.o
add_files matrix_mul_initialize.c
add_files matrix_mul_initialize.h
add_files matrix_mul_initialize.o
add_files matrix_mul_ref.rsp
add_files matrix_mul_rtw.mk
add_files matrix_mul_terminate.c
add_files matrix_mul_terminate.h
add_files matrix_mul_terminate.o
add_files matrix_mul_types.h
add_files rtw_proj.tmw
add_files rtwtypes.h
open_solution "solution1"
set_part {xc6vlx240tff1156-1} -tool vivado
create_clock -period 10 -name default
#source "./matrix_mul_vivado/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -format ip_catalog
