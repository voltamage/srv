#!/bin/sh
sudo pacman -Sy --noconfirm --needed ansible git
git clone https://github.com/voltamage/srv
sudo ansible-playbook ~/srv/install/vault.yml --ask-vault-pass
sudo ansible-playbook ~/srv/system.yml
chezmoi apply
sudo ansible-playbook ~/srv/cockpit.yml
sudo ansible-playbook ~/srv/docker.yml
cd ~/srv && sudo docker compose up -d