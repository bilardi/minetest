#!/bin/bash

# password assignment
password="C0d3rd0j0$(date +%Y%m%d)"

# installation Minetest server
apt-get update -y
apt-get install -y -t buster-backports minetest-server
systemctl stop minetest-server
today=$(date +%Y%m%d)
sed -i 's/creative_mode = false/creative_mode = true/' /etc/minetest/minetest.conf
sed -i 's/# default_password =/default_password = '$password'/' /etc/minetest/minetest.conf

# installation Mesecons mods
apt-get install -y unzip
wget https://github.com/minetest-mods/mesecons/archive/master.zip .
unzip master.zip
mkdir -p /var/games/minetest-server/.minetest/mods
mv mesecons-master/mesecons* /var/games/minetest-server/.minetest/mods/
chown -R "Debian-minetest":games /var/games/minetest-server/.minetest

systemctl start minetest-server
sleep 300
systemctl stop minetest-server
sed -i 's/\(load_mod.*\) = false/\1 = true/' /var/games/minetest-server/.minetest/worlds/world/world.mt

# start Minetest server
systemctl start minetest-server