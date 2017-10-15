# modify root pwssword
passwd

# modify ssh port
vim /etc/ssh/sshd_config
service sshd restart

# create new user
useradd [user]
mkdir /home/[user]

# [user] as sudoer
vim /etc/sudoers

# update packages
apt-get update
apt-get upgrade -y
