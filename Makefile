#
# Makefile for the PMem driver.
#

obj-m += pmem.o

all:
	make -C /lib/modules/$(shell uname -r)/build M=`pwd`

clean:
	rm -rf *.o *.mod.c modules.* Module.* *.ko
