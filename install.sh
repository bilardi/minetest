#!/bin/bash

# assignments
max_users=30
creative_mode="true"
password="C0d3rd0j0$(date +%Y%m%d)"
time_speed=0
mg_name="flat"
water_level=0
mg_flags="nocaves,nodungeons,light,nodecorations"
# https://wiki.minetest.net/Server_commands#Privilege_manipulation
name="ab"
# https://wiki.minetest.net/Privileges
default_privs="interact, shout"

# installation Minetest server
apt-get update -y
apt-get install -y -t buster-backports minetest-server
systemctl stop minetest-server
today=$(date +%Y%m%d)
sed -i 's/max_users = 15/max_users = '$max_users'/' /etc/minetest/minetest.conf
sed -i 's/creative_mode = false/creative_mode = '$creative_mode'/' /etc/minetest/minetest.conf
sed -i 's/# default_password =/default_password = '$password'/' /etc/minetest/minetest.conf
sed -i 's/default_privs = interact, shout/default_privs = '$default_privs'/' /etc/minetest/minetest.conf
sed -i 's/# time_speed = 72/# time_speed = '$time_speed'/' /etc/minetest/minetest.conf
sed -i 's/# mg_name = v7/mg_name = '$mg_name'/' /etc/minetest/minetest.conf
sed -i 's/# water_level = 1/water_level = '$water_level'/' /etc/minetest/minetest.conf
sed -i 's/# mg_flags = caves,dungeons,light,decorations/mg_flags = '$mg_flags'/' /etc/minetest/minetest.conf
sed -i 's/# name =/name = '$name'/' /etc/minetest/minetest.conf

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