#!./vinterp.sh
#
# Script for programming/uploading/flashing the script onto the Arty A7
# which must be connected to the host system via USB.
#

open_hw_manager
connect_hw_server -url localhost:3121
current_hw_target [get_hw_targets */xilinx_tcf/Digilent/*]
open_hw_target

set dev [lindex [get_hw_devices] 0]
current_hw_device $dev
refresh_hw_device -update_hw_probes false $dev

set_property PROGRAM.FILE ${BUILD_DIR}/${TARGET_TOP}.bit $dev
program_hw_devices $dev
refresh_hw_device $dev

