#!./vinterp.sh
#
# Script for running the tests
#

source ./settings.tcl

read_vhdl ./rtl/top.vhd
read_vhdl ./test/top_test.vhd

save_project_as tmp -force
current_project tmp
set_property top top_test [get_fileset sim_1]

launch_simulation -simset sim_1 -mode behavioral
run 40ns

reset_simulation
close_project -delete

exit 0

