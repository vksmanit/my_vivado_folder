############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2015 Xilinx Inc. All rights reserved.
############################################################
open_project test_project
set_top hw_fn
add_files sources/hw01.c
add_files -tb sources/tb.c
open_solution "solution1"
set_part {xc6vlx240tff1156-1}
create_clock -period 10 -name default
#source "./test_project/solution1/directives.tcl"
csim_design
csynth_design
# cosim_design
# export_design -format ip_catalog
#export_design -format sysgen_ise
close_project
exit
