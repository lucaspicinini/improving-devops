#!/bin/bash

echo 'updating server and installing app...'

apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

cd /tmp
wget https://github.com/lucaspicinini/front-end-mentor-challenges/archive/refs/heads/main.zip

unzip main.zip
cd front-end-mentor-challenges
cd -R * /var/www/html/
