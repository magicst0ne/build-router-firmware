#!/bin/sh

### Install Ubuntu 18.04

### Apply OS updates and make bash the default shell (reboot required)
sudo apt-get update && sudo apt-get -y dist-upgrade && sudo rm -f /bin/sh && sudo ln -sf bash /bin/sh


### Install Linux kernel headers and essential development tools
sudo apt-get update && sudo apt-get -y install git build-essential linux-headers-$(uname -r)


### Install dependencies for AsusWRT
sudo dpkg --add-architecture i386 && sudo apt-get update && sudo apt-get -y install libtool-bin cmake libproxy-dev uuid-dev liblzo2-dev autoconf automake bash bison bzip2 diffutils file flex m4 g++ gawk groff-base libncurses5-dev libtool libslang2 make patch perl pkg-config shtool subversion tar texinfo zlib1g zlib1g-dev git gettext libexpat1-dev libssl-dev cvs gperf unzip python libxml-parser-perl gcc-multilib gconf-editor libxml2-dev g++-multilib gitk libncurses5 mtd-utils libncurses5-dev libvorbis-dev git autopoint autogen sed build-essential intltool libelf1 libglib2.0-dev xutils-dev lib32z1-dev lib32stdc++6 xsltproc gtk-doc-tools libelf-dev:i386 libelf1:i386 libltdl-dev


### Install other programs
sudo apt-get -y install lzip patchelf

echo "linux reboot required"
