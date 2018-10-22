#!/bin/bash

# "Don't behold my home please" every-boot fix.
USER_HOME=$(eval echo ~$USER)
chmod 750 $USER_HOME

exit 0
