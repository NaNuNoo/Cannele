#!/bin/bash

iptables -F

iptables -A INPUT -p tcp --dport 7701 -j ACCEPT # ssh
iptables -A INPUT -p tcp --sport 6602 --dport 7702 -j ACCEPT # shadowsocks
iptables -A INPUT -p tcp --sport 6603 --dport 7703 -j ACCEPT # pptp
iptables -A INPUT -p tcp --dport 80 -j ACCEPT # nginx

iptables -P INPUT REJECT
iptables -P OUTPUT ACCEPT
iptables -P FORWARD REJECT

service iptables save
