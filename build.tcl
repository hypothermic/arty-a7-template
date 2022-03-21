#!./vinterp.sh
#
# Script for synthesis and implementation to bitstream in non-project mode.
#

source ./settings.tcl

file mkdir $BUILD_DIR

set_part "$TARGET_PART"
read_xdc ./constraints.xdc

read_vhdl ./rtl/top.vhd

synth_design -top $TARGET_TOP -part $TARGET_PART
opt_design
place_design
route_design
write_bitstream -force $BUILD_DIR/$TARGET_TOP.bit

exit 0
