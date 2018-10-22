#!/bin/bash

USER_HOME=$(eval echo ~$USER)

# Some cache cleanings (add more down here).
[ -d $USER_HOME/.gimp-2.8 ] && rm -f $USER_HOME/.gimp-2.8/gimpswap.*

exit 0
