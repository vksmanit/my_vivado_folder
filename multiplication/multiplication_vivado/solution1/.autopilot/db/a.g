#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vipinsoni/MTP/my_vivado_folder/multiplication/multiplication_vivado/solution1/.autopilot/db/a.g.bc ${1+"$@"}
