#!/bin/sh

umount /mnt/ramdisk
rmmod pmem
rmmod pmfs
insmod pmem.ko pmem_start_gb=1024 pmem_size_gb=64 measure_timing=0

sleep 1

mkfs.ext4 /dev/pmem0
mount /dev/pmem0 /mnt/ramdisk

#cp test1 /mnt/ramdisk/
#dd if=/dev/zero of=/mnt/ramdisk/test1 bs=1M count=1024 oflag=direct
