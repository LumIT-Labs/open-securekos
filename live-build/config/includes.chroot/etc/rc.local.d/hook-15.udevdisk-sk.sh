#!/bin/bash

# Configure udev rules for hiding to GNOME the persistence and second system partitions.
# Halt system immediately if the boot USB (Secure-K USB) is removed.
DEV=$(mount | grep persistence | grep mapper | cut -d " " -f 1 | cut -d "/" -f 4)
if [ "$DEV" != "" ]; then
    echo "KERNEL==\"${DEV:0:3}2\",ENV{UDISKS_IGNORE}=\"1\"" > /etc/udev/rules.d/99-hide-disk.rules 
    echo "KERNEL==\"${DEV:0:3}5\",ENV{UDISKS_IGNORE}=\"1\"" >> /etc/udev/rules.d/99-hide-disk.rules 
    echo "KERNEL==\"${DEV:0:3}\",ACTION==\"remove\",SUBSYSTEM==\"block\",RUN+=\"/usr/bin/sdmem -ll\",RUN+=\"/bin/chvt 5\",RUN+=\"/sbin/halt -fpn\"" > /etc/udev/rules.d/99-halt-on-sk-disconnection.rules
fi

# Configure udev rules for hiding the hard drive which contains a Windows installation.
DEV=$(fdisk -l | grep -i Windows | cut -d " " -f 1 | cut -d "/" -f 3 | head -1)
if [ "$DEV" != "" ]; then
    echo "KERNEL==\"${DEV:0:3}*\",ENV{UDISKS_IGNORE}=\"1\"" >> /etc/udev/rules.d/99-hide-disk.rules 
fi

/sbin/udevadm control --reload-rules
/sbin/udevadm trigger

exit 0
