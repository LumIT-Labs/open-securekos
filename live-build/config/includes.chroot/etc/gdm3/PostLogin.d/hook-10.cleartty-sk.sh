#!/bin/bash

# Some ttys cleanup.
for console in $(seq 1 4); do
    echo -e "\033c" >/dev/tty$console
    echo -e '\033[38;5;0m' >/dev/tty$console
    echo -e '\033[?17;0;0c' >/dev/tty$console
done

exit 0

