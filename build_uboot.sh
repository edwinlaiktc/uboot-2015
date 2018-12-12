#!/bin/bash
para=$@

#parse_cmd() {
#	for x in ${para}; do
#	case $x in
#		2Gb
#}

#parse_cmd ${para}

#cp include/configs/mx6sabresd_2Gb.h include/configs/mx6sabresd.h
#cp include/configs/mx6sabresd_4Gb.h include/configs/mx6sabresd.h
#cp include/configs/mx6sabresd_8Gb.h include/configs/mx6sabresd.h
#cp arch/arm/cpu/armv7/mx6/soc.c.400 arch/arm/cpu/armv7/mx6/soc.c
#cp arch/arm/cpu/armv7/mx6/soc.c.528 arch/arm/cpu/armv7/mx6/soc.c

export ARCH=arm
export CROSS_COMPILE=arm-linux-gnueabihf-
make distclean;
make mx6qsabresd_defconfig
#make wandboard_quad_config
make -j12

