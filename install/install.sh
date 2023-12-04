#!/bin/sh
systemctl stop reflector.service
mount -o remount,size=75% /run/archiso/cowspace
reflector --sort rate -c US -p https --delay 1 --save /etc/pacman.d/mirrorlist -x berkeley
pacman -Syu --noconfirm --ignore linux
curl https://raw.githubusercontent.com/voltamage/srv/main/install/user_configuration.json -O
curl https://raw.githubusercontent.com/voltamage/srv/main/install/user_credentials.json -O
