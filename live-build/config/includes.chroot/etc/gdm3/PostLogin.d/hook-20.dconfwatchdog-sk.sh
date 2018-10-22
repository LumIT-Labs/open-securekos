#!/bin/bash

USER_HOME=$(eval echo ~$USER)

# dconf/user watchdog.
DCONF_SK="/etc/config-dconf-user-sk" 
DCONF_USER=$USER_HOME/.config/dconf/user
if ! grep -qi 'secure-k@mon-k.com' $DCONF_USER; then
    # Something went wrong, switch dconf/user to Secue-K's default. 
    cp -f $DCONF_SK $DCONF_USER 
    chown $USER:$USER $DCONF_USER 
    chmod 700 $DCONF_USER 
fi

exit 0
