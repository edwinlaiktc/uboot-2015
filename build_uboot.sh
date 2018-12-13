#!/bin/bash
para=$@

if [ "$para" == "-h" ]; then
	echo "Help~"
	exit 0;
fi

platform=$1

#parse_cmd() {
#	for x in ${para}; do
#	case $x in
#		2Gb
#}

#parse_cmd ${para}

# Used in uboot 2013
#	cp include/configs/mx6sabresd_2Gb.h include/configs/mx6sabresd.h
#	cp include/configs/mx6sabresd_4Gb.h include/configs/mx6sabresd.h
#	cp include/configs/mx6sabresd_8Gb.h include/configs/mx6sabresd.h
#	cp arch/arm/cpu/armv7/mx6/soc.c.400 arch/arm/cpu/armv7/mx6/soc.c
#	cp arch/arm/cpu/armv7/mx6/soc.c.528 arch/arm/cpu/armv7/mx6/soc.c

if [ -z "$platform" ]; then
#        platform="mx6qsabresd_defconfig";
	platform="mx6_ktc_defconfig";
fi

echo "Build uboot for platform $platform";

export ARCH=arm
export CROSS_COMPILE=arm-linux-gnueabihf-
make distclean;
make $platform
make -j12

