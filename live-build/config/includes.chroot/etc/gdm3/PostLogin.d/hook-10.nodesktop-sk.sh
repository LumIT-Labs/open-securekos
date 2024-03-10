#!/bin/bash

USER_HOME=$(eval echo ~$USER)

# Remove the default-language-translated-Desktop-folder, after having forced GNOME to create it on first run. 
# This does not work however on the first login following a language changement, because GNOME translates the folders *after* the login.
# For the purpose /etc/xdg/user-dirs.defaults has been created.
xdg-user-dirs-update
USER_DESKTOP=$(xdg-user-dir DESKTOP | sed -r -e 's#[/]+$##g')
HOMEDIR=$(echo $USER_HOME | sed -r -e 's#[/]+$##g')
if [ -d $USER_DESKTOP ] && [ "$USER_DESKTOP" != "$HOMEDIR" ]; then
     [ ! "$(ls -A $USER_DESKTOP )" ] && rm -fR $USER_DESKTOP
fi

# Remove the Desktop definition from user-dirs.
sed -i /^XDG_DESKTOP_DIR=.*/d $USER_HOME/.config/user-dirs.dirs
sed -i '/XDG_DOWNLOAD_DIR=/i \XDG_DESKTOP_DIR=\"\$HOME/\"' $USER_HOME/.config/user-dirs.dirs

exit 0
