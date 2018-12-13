# UBoot Change Log

> Here record all change of Uboot-2015.
<br /> Update information below.

## Modified
--
#### v1.0.0 - Modified Note (2018-12-13):
  * Add build_uboot.sh, dd_uboot.sh
  * Add new board platform at ./board/freescale/mx6_ktc
  * Add new config file "mx6_ktc_defconfig" at ./configs/
  * Fixed root device of bootarg in `./include/configs/mx6sabre_common.h`, ie root=/dev/mmcblk1p1
  * Replace bootup register config(board/freescale/mx6sabresd$ mx6q_4x_mt41j128.cfg) to fit customized LPDDR2
  * Print out ddr row, col, bank, width from ./arch/arm/imx-common/cpu.c imx_ddr_size()

#### v0.0.1 - Modified Note (2018-12-12):
  * 1st workable draft

