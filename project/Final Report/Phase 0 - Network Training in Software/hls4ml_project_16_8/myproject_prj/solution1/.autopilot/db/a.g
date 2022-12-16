#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/zazu/fpga-inference/pretraining/test1_16_8_VivadoAccelerator/myproject_prj/solution1/.autopilot/db/a.g.bc ${1+"$@"}
