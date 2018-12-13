<div align="center">
  <h1>iMX6 Uboot 2015</h1>
</div>

<br>

<div align="center">
	This is the source code from [freescale imx 2015 branch].
	<br>Modified by Edwin, for customer LPDDR2 platform, built with iMX6 series controller.
	<br>With SD card ONLY, and output with Rs232, compatible with both LPDDR2 and LPDDR3.
</div>

<br>

<div align="center">
  <a href="https://travis-ci.org/edwinlaiktc/uboot-2015">
    <img src="https://travis-ci.org/edwinlaiktc/uboot-2015.svg?branch=master" alt="Build status" />
  </a>
  <a href="https://www.nxp.com/products/processors-and-microcontrollers/arm-based-processors-and-mcus/i.mx-applications-processors/i.mx-6-processors/i.mx-6quad-processors-high-performance-3d-graphics-hd-video-arm-cortex-a9-core:i.MX6Q">
    <img src="https://img.shields.io/badge/arm-iMX6-orange.svg" alt="Platform"/>
  </a>
  <a href="https://ftp.gnu.org/gnu/gcc/">
    <img src="https://img.shields.io/badge/gcc-4.8%20%7C%205.4.0-brightgreen.svg" alt="Compiler"/>
  </a>
</div>

<br>

    The program is provided AS IS with NO WARRANTY OF ANY KIND,
    INCLUDING THE WARRANTY OF DESIGN,
    MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.

## Introductions 
 * Source(freescale original) : [imx uboot 2015.4 src]
 * Tutorial : [Uboot Series](https://edwinlinuxlife.blogspot.com/2018/12/uboot-with-imx6-part-1.html)
 * Documents : [Uboot2015-Wiki](https://github.com/edwinlaiktc/uboot-2015/wiki)

### Release Note
 * Current Modified Version : v1.0.0
 * Modified Note : [[Modified Note](CHANGELOG.md)]

### Uboot Compiler mapping table
| Version | Compiler | ARCH | Platform |
| ----------------- | ------------- | ----- | ------------- |
| imx-uboot-2015 | GCC4.8, GCC5.4.0 | arm | Ubuntu16.04LTS |

## Build your own UBoot
### Requirements
```bash
sudo apt-get install libc6-armel-cross libc6-dev-armel-cross binutils-arm-linux-gnueabi libncurses5-dev
sudo apt-get install gcc-arm-linux-gnueabi g++-arm-linux-gnueabi
sudo apt-get install gcc-arm-linux-gnueabihf g++-arm-linux-gnueabihf
```

### Complied uboot
To build uboot, just running script __build_uboot.sh__. <br>

```bash
# default platform is set as mx6_ktc_defconfig
./build_uboot.sh <your_platform_defconfig>
```

### Dump to SD Card
Also, running script __dd_uboot.sh__ to dump uboot to specific address of SD card. <br>
Default device name is "c", which fit to my usage, change it if needed.

```bash
# <X> will be device name of your sd card, ig. /dev/sdc => c
./dd_uboot.sh <X>
```

## Directory Hierarchy

```bash

uboot-2015
├──arch			Architecture specific files
│   ├──arc		Files generic to ARC architecture
│   ├──arm		Files generic to ARM architecture
│   ├──m68k		Files generic to m68k architecture
│   ├──microblaze	Files generic to microblaze architecture
│   ├──mips		Files generic to MIPS architecture
│   ├──nds32		Files generic to NDS32 architecture
│   ├──nios2		Files generic to Altera NIOS2 architecture
│   ├──openrisc		Files generic to OpenRISC architecture
│   ├──powerpc		Files generic to PowerPC architecture
│   ├──riscv		Files generic to RISC-V architecture
│   ├──sandbox		Files generic to HW-independent "sandbox"
│   ├──sh		Files generic to SH architecture
│   └──x86		Files generic to x86 architecture
├── api			Machine/arch independent API for external apps
├── board		Board dependent files
├── cmd			U-Boot commands functions
├── common		Misc architecture independent functions
├── configs		Board default configuration files
├── disk		Code for disk drive partition handling
├── doc			Documentation (don't expect too much)
├── drivers		Commonly used device drivers
├── dts			Contains Makefile for building internal U-Boot fdt.
├── examples		Example code for standalone applications, etc.
├── fs			Filesystem code (cramfs, ext2, jffs2, etc.)
├── include		Header Files
├── lib			Library routines generic to all architectures
├── Licenses		Various license files
├── net			Networking code
├── post		Power On Self Test
├── scripts		Various build scripts and Makefiles
├── test		Various unit test files
└── tools		Tools to build S-Record or U-Boot images, etc.

```

## License
Disclaimer: Everything you see here are free for studying and none-profit usage.
Also make sure you comply with the [license](Licenses).

`Copyright © 2018, Kingston Technology Corp.`

`Developed by : RD Module | Edwin Lai & Sam Cheng`

[freescale imx 2015 branch]: <http://git.freescale.com/git/cgit.cgi/imx/uboot-imx.git/?h=imx_v2015.04_3.14.52_1.1.0_ga>
[imx uboot 2015.4 src]: <http://git.freescale.com/git/cgit.cgi/imx/uboot-imx.git/snapshot/uboot-imx-imx_v2015.04_3.14.52_1.1.0_ga.tar.gz>
