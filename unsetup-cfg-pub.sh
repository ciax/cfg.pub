#!/bin/bash
unsetup=~/utils/unsetup-utils.sh
[ -e "$unsetup" ] && $unsetup
rm -rf ~/utils
exec bash