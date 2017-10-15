#!/bin/bash

apt-get update -y
apt-get install language-pack-en-base -y
dpkg-reconfigure locales

apt-get install software-properties-common -y
add-apt-repository ppa:max-c-lv/shadowsocks-libev

apt-get update -y
apt install shadowsocks-libev -y
