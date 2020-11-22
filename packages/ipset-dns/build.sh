export LD_LIBRARY_PATH=/home/tomato/freshtomato-arm/release/src-rt-6.x.4708/toolchains/hndtools-arm-linux-2.6.36-uclibc-4.5.3/lib
export PATH=$PATH:/home/tomato/freshtomato-arm/release/src-rt-6.x.4708/toolchains/hndtools-arm-linux-2.6.36-uclibc-4.5.3/bin
export PATH=$PATH:/home/tomato/freshtomato-arm/release/src-rt-6.x.4708/toolchains/hndtools-arm-linux-2.6.36-uclibc-4.5.3/arm-brcm-linux-uclibcgnueabi/bin

CC="/home/tomato/freshtomato-arm/release/src-rt-6.x.4708/toolchains/hndtools-arm-linux-2.6.36-uclibc-4.5.3/bin/arm-uclibc-linux-2.6.36-cc"
AR="/home/tomato/freshtomato-arm/release/src-rt-6.x.4708/toolchains/hndtools-arm-linux-2.6.36-uclibc-4.5.3/bin/arm-uclibc-linux-2.6.36-ar"
CFLAGS="-I/home/tomato/freshtomato-arm/release/src-rt-6.x.4708/router/libmnl/staged/usr/include -I/home/tomato/freshtomato-arm/release/src-rt-6.x.4708/router/include -I/home/tomato/freshtomato-arm/release/src-rt-6.x.4708/linux/linux-2.6.36/include -I/home/tomato/freshtomato-arm/release/src-rt-6.x.4708/linux/linux-2.6.36/include/uapi -L/home/tomato/freshtomato-arm/release/src-rt-6.x.4708/router/libmnl/staged/usr/lib -lmnl"

make CC=$CC AR=$AR CFLAGS="$CFLAGS"
