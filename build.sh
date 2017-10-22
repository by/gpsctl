#!/bin/bash
cd ~/gpsctl
gcc -std=c11 -rdynamic -g -fno-omit-frame-pointer -funwind-tables -mapcs -mno-sched-prolog -o gpsctl gpsctl.c sl_general.c sl_serial.c ublox.c
#
# -rdynamic                                                            //allows stack dumps to include symbols
# -g -fno-omit-frame-pointer -funwind-tables -mapcs -mno-sched-prolog  // magic that allows gdbserver to work
# -o gpsctl                                                            // specifies output file name