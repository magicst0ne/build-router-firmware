export LD_LIBRARY_PATH=/opt/brcm-arm/lib
echo $PATH | grep -qF /opt/brcm-arm/bin || export PATH=$PATH:/opt/brcm-arm/bin
echo $PATH | grep -qF /opt/brcm-arm/arm-brcm-linux-uclibcgnueabi/bin || export PATH=$PATH:/opt/brcm-arm/arm-brcm-linux-uclibcgnueabi/bin


arm-uclibc-linux-2.6.36-gcc helloworld.c -o helloworld
