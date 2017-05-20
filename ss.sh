#!/bin/bash

apt-get update -y
apt-get language-pack-en-base -y
dpkg-reconfigure locales

apt-get install software-properties-common
add-apt-repository ppa:max-c-lv/shadowsocks-libev

apt-get update -y
apt install shadowsocks-libev -y
