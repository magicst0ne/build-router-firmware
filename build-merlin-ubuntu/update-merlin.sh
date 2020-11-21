#!/bin/sh

### Clone the repo
cd
if [ ! -d asuswrt-merlin.ng ]; then
  git clone https://github.com/RMerl/asuswrt-merlin.ng
else
  cd asuswrt-merlin.ng
  git clean -fdxq && git reset --hard
  git pull
fi

### Create a build tree from the repo and fix the symlinks
cd
rm -rf asuswrt-merlin.ng-build
cp -a asuswrt-merlin.ng/ asuswrt-merlin.ng-build

# fix symlinks for HND toolchain
rm -rf ~/asuswrt-merlin.ng-build/release/src-rt-5.02hnd/bcmdrivers/broadcom/net/wl/impl51/main/src/toolchains
ln -s ~/am-toolchains/brcm-arm-hnd ~/asuswrt-merlin.ng-build/release/src-rt-5.02hnd/bcmdrivers/broadcom/net/wl/impl51/main/src/toolchains

# fix symlinks for ARM toolchain
rm -rf ~/asuswrt-merlin.ng-build/release/src-rt-6.x.4708/toolchains
ln -s ~/am-toolchains/brcm-arm-sdk ~/asuswrt-merlin.ng-build/release/src-rt-6.x.4708/toolchains

