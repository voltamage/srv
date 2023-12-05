#!/bin/sh
sudo ansible-playbook ~/srv/system.yml
sudo ansible-playbook ~/srv/cockpit.yml
sudo ansible-playbook ~/srv/docker.yml
sudo docker compose up -d
