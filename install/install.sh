#!/bin/sh
systemctl stop reflector.service
mount -o remount,size=75% /run/archiso/cowspace
yes | pacman -Sy --noconfirm archlinux-keyring
pacman-key --init
pacman-key --populate
pacman -S --noconfirm --needed reflector
reflector --sort rate -c US -p https --delay 1 --save /etc/pacman.d/mirrorlist -x berkeley
yes | pacman -Syu --noconfirm --ignore linux
curl https://raw.githubusercontent.com/voltamage/srv/main/install/user_configuration.json -O
curl https://raw.githubusercontent.com/voltamage/srv/main/install/user_credentials.json -O
archinstall --config user_configuration.json --creds user_credentials.json
