#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vipinsoni/MTP/my_vivado_folder/matrix_mul/matrix_mul_vivado/solution1/.autopilot/db/a.g.bc ${1+"$@"}
