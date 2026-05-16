#!/system/bin/bash

MODDIR=${0%/*}

swapoff /dev/block/zram0
echo "1" > /sys/block/zram0/reset
echo "2294967296" > /sys/block/zram0/disksize
echo "1096M" > /sys/block/zram0/mem_limit
echo "4" > /sys/block/zram0/max_comp_streams
mkswap /dev/block/zram0
swapon /dev/block/zram0