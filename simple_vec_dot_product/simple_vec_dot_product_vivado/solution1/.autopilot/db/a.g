#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vipinsoni/MTP/my_vivado_folder/simple_vec_dot_product/simple_vec_dot_product_vivado/solution1/.autopilot/db/a.g.bc ${1+"$@"}
