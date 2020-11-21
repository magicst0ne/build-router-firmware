#!/bin/sh

### Build RT-AC88U firmware (ARM)
export LD_LIBRARY_PATH=
export TOOLCHAIN_BASE=
echo $PATH | grep -qF /opt/brcm-arm/bin || export PATH=$PATH:/opt/brcm-arm/bin
echo $PATH | grep -qF /opt/brcm-arm/arm-brcm-linux-uclibcgnueabi/bin || export PATH=$PATH:/opt/brcm-arm/arm-brcm-linux-uclibcgnueabi/bin
cd ~/asuswrt-merlin.ng-build/release/src-rt-7.14.114.x/src
make clean
make rt-ac88u
