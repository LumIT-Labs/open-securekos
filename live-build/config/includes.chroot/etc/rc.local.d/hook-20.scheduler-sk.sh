#!/bin/bash

DEV=$(mount | grep persistence | grep mapper | cut -d " " -f 1 | cut -d "/" -f 4)

# Change I/O scheduler for persistence (flash memory).
if [ "$DEV" != "" ]; then
    echo noop > /sys/block/${DEV:0:3}/queue/scheduler
fi

exit 0
