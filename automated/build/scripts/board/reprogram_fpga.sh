#!/bin/sh

# Brief: Script to re-program FPGA bitstream (.rbf) on-the-go.

appname=$(basename $0)

show_usage() {
  echo "Usage:"
  echo "     $appname <overlay DTB> <RBF>"
  echo ""
}

if [[ $# -ne 2 ]]; then
  show_usage
  exit 1
fi

OVERLAY_DTB=$1
FPGA_RBF=$2

# Copy required files
cp $OVERLAY_DTB /lib/firmware/overlay.dtb
cp $FPGA_RBF /lib/firmware/overlay.rbf

# Program FPGA
rmdir /sys/kernel/config/device-tree/overlays/0 2> /dev/null
mkdir /sys/kernel/config/device-tree/overlays/0 2> /dev/null

echo "overlay.dtb" > /sys/kernel/config/device-tree/overlays/0/path
