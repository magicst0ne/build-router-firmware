#!/bin/sh

### Clone the toolchains
cd
if [ ! -d am-toolchains ]; then
  git clone https://github.com/RMerl/am-toolchains
fi

### Fix the toolchain symlinks
sudo mkdir -p /opt ; sudo rm -rf /opt/toolchains ; sudo ln -s ~/am-toolchains/brcm-arm-hnd /opt/toolchains ; sudo rm -f /opt/brcm-arm ; sudo ln -s ~/am-toolchains/brcm-arm-sdk/hndtools-arm-linux-2.6.36-uclibc-4.5.3 /opt/brcm-arm ; sudo rm -f /opt/brcm ; sudo ln -s ~/am-toolchains/brcm-mips-sdk/tools/brcm /opt/brcm
