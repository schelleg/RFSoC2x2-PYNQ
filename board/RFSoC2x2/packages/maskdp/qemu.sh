#! /bin/bash
# Copyright (C) 2021 Xilinx, Inc
# SPDX-License-Identifier: BSD-3-Clause

set -x
set -e


# Disable X11 - RFSoC2x2's DP causing intermittent kernel panics in PYNQv2.7...
# For now disable the X11 service until this can be resolved
systemctl mask pynq-x11

rm /home/xilinx/jupyter_notebooks/common/display_port_introduction.ipynb
