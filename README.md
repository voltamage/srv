curl https://raw.githubusercontent.com/voltamage/srv/main/install/install.sh | sh

archinstall --config user_configuration.json --creds user_credentials.json

curl https://raw.githubusercontent.com/voltamage/srv/main/install/setup.sh | sh


nmcli c

copy relevant uuid into:

sudo nmcli con mod $ ip4 192.168.1.100/24
