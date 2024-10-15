#!/bin/sh

source /root/reprogram_fpga.sh /root/overlay.dtb /root/rbf/ghrd.core.rbf

./l1c > l1c.log
