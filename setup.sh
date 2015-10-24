#!/bin/sh

umount /mnt/ramdisk
rmmod pmem
rmmod pmfs
insmod pmem.ko pmem_start_gb=8 pmem_size_gb=8 measure_timing=0

