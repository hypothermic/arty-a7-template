#
# Usage:
# $ make {build,test,clean,upload}
#
# This is mostly just a wrapper file around the tcl scripts.
# If you feel comfortable using the tcl scripts, do that instead.
#

.PHONY: clean test build upload
.DEFAULT_GOAL: all
all: clean build

# The build directory
BUILD_DIR	?= ./build/

# The required executable locations
CHMOD_EXEC	?= /usr/bin/chmod
RM_EXEC		?= /usr/bin/rm

# Remove the output files
clean:
	${RM_EXEC} -rf ${BUILD_DIR}

# Simulate using testbench
test:
	${CHMOD_EXEC} u+x ./sim.tcl
	${CHMOD_EXEC} u+x ./vinterp.sh
	./sim.tcl

# Synth + impl + generate bitstream
build:
	${CHMOD_EXEC} u+x ./build.tcl
	${CHMOD_EXEC} u+x ./vinterp.sh
	./build.tcl

# Program the Arty with the bitstream file
upload: build
	${CHMOD_EXEC} u+x ./upload.tcl
	${CHMOD_EXEC} u+x ./vinterp.sh
	./upload.tcl

