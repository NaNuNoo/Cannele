#!/bin/bash

sudo iptables -F

sudo iptables -A INPUT -p tcp --dport 7701 -j ACCEPT # ssh
sudo iptables -A INPUT -p tcp --dport 7702 -j ACCEPT # shadowsocks
sudo iptables -A INPUT -p tcp --dport 7703 -j ACCEPT # pptp
sudo iptables -A INPUT -p tcp --dport 80 -j ACCEPT # http
sudo iptables -A INPUT -p tcp --dport 443 -j ACCEPT # https

sudo iptables -A INPUT -m state --state ESTABLISHED -j ACCEPT

sudo iptables -P INPUT REJECT
sudo iptables -P OUTPUT ACCEPT
sudo iptables -P FORWARD REJECT

sudo iptables-save > iptables.conf
