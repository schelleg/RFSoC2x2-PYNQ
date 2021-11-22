# RFSoC 2x2 Kit

View the *RFSoC 2x2 Kit GitHub page* for this repository on [www.rfsoc-pynq.io](http://www.rfsoc-pynq.io/).

This repository is used to host the *GitHub Documentation Page* for the
RFSoC2x2 kit. It includes the sources for the documentation, and board
collateral including source code and build scripts for the RFSoC 2x2 *base*
design. The design files in this repository are compatible with Xilinx
Vivado 2020.1, and PYNQ v2.6.0 and later.

Users can find the Vivado board files on
[Xilinx Vivado board repository](https://github.com/Xilinx/XilinxBoardStore/tree/2020.1/boards/Xilinx/rfsoc2x2/1.1).

![alt](./docs/images/01_rfsoc_2x2_t.png)

## Steps to rebuild the PYNQ SD card image for the RFSoC 2x2 (Linux)

1. First clone this repository:

	```bash
	git clone --recursive https://github.com/Xilinx/RFSoC2x2-PYNQ.git
	```

2. Build the base overlay bitstream
   
	```bash
	cd RFSoC2x2-PYNQ/board/RFSoC2x2/base
	make
	```

3. Go to PYNQ sdbuild folder and build the image with correct board folder and prebuilt binaries.
   path:

	```bash
	export BUILDROOT=`pwd`
	
	# get prebuilts
	wget https://bit.ly/pynq_aarch64_2_7 -O focal.aarch64.2.7.0.tar.gz
	wget https://files.pythonhosted.org/packages/97/65/801850433cfc0c1222d5e6cb98a04f513ebd18b2e5fba7720069d291f37d/pynq-2.7.0.tar.gz -O pynq-2.7.0.tar.gz	
	
	# call PYNQ's sdbuild Makefile
	cd RFSoC2x2-PYNQ/pynq.git/sdbuild
	make BOARDDIR=$BUILDROOT/RFSoC2x2-PYNQ PREBUILT=$BUILDROOT/focal.aarch64.2.7.0.tar.gz PYNQ_SDIST=$BUILDROOT/pynq-2.7.0.tar.gz
	```

Copyright (C) 2021 Xilinx, Inc

SPDX-License-Identifier: BSD-3-Clause
