#!/bin/bash
dd if=/dev/zero of=/swapfile bs=1024 count=4194304
 chmod 600 /swapfile
mkswap /swapfile
swapon /swapfile
echo /swapfile swap swap defaults 0 0 >> /etc/fstab
echo vm.swappiness=30 >> /etc/sysctl.conf
sysctl vm.swappiness=35
