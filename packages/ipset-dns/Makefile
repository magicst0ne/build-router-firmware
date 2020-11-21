CFLAGS ?= -Os -Wall -DLINUX26 -DCONFIG_BCMWL5 -DDEBUG_NOISY -DDEBUG_RCTEST -pipe -DBCMWPA2 -DBCMARM -fno-strict-aliasing -marm -DCONFIG_NVSIZE_128 -DLINUX_KERNEL_VERSION=132644  -ffunction-sections -fdata-sections 
ifeq ($(OLD_IPSET),1)
	CFLAGS += -DOLD_IPSET
else
	CFLAGS += -lmnl -I/home/merlin/asuswrt-merlin.ng-build/release/src-rt-7.14.114.x/src/router/libmnl-1.0.4/include -L/home/merlin/asuswrt-merlin.ng-build/release/src-rt-7.14.114.x/src/router/libmnl-1.0.4/src/.libs
endif

.PHONY: clean

ipset-dns:

clean:
	rm -f ipset-dns
