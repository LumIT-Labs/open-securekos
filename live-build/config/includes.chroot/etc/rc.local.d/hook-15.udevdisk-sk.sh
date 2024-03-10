#!/bin/bash

# Configure udev rules for hiding to GNOME the second system partition.
DEV=$(mount | grep persistence | head -1 | cut -d " " -f 1 | cut -d "/" -f 4)
if [ "$DEV" != "" ]; then
    echo "KERNEL==\"${DEV:0:3}2\",ENV{UDISKS_IGNORE}=\"1\"" >> /etc/udev/rules.d/99-hide-disk.rules
fi

/sbin/udevadm control --reload-rules
/sbin/udevadm trigger

exit 0

