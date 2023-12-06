#!/bin/sh
sudo ansible-playbook ~/srv/system.yml
sudo ansible-playbook ~/srv/cockpit.yml
sudo ansible-playbook ~/srv/docker.yml
cd ~/srv && sudo docker compose up -d
cd -
