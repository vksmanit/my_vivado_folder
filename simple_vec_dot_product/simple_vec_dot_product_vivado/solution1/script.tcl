############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
############################################################
open_project simple_vec_dot_product_vivado
set_top simple_vec_dot_product
add_files simple_vec_dot_product_types.h
add_files simple_vec_dot_product_terminate.o
add_files simple_vec_dot_product_terminate.h
add_files simple_vec_dot_product_terminate.c
add_files simple_vec_dot_product_rtw.mk
add_files simple_vec_dot_product_ref.rsp
add_files simple_vec_dot_product_initialize.o
add_files simple_vec_dot_product_initialize.h
add_files simple_vec_dot_product_initialize.c
add_files simple_vec_dot_product.o
add_files simple_vec_dot_product.h
add_files simple_vec_dot_product.c
add_files simple_vec_dot_product.a
add_files rtwtypes.h
add_files rtw_proj.tmw
add_files codeInfo.mat
add_files buildInfo.mat
add_files -tb simple_vec_dot_product_tb.c
open_solution "solution1"
set_part {xc6vlx240tff1156-1} -tool vivado
create_clock -period 10 -name default
#source "./simple_vec_dot_product_vivado/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -rtl vhdl -tool modelsim
export_design -format ip_catalog
