#!/bin/bash
#stop nginx if present or else install nginx
if [[ -f '/usr/lib/systemd/system/nginx.service' ]]; then
    sudo systemctl stop nginx
else
    sudo yum install -y nginx
    sleep 30
fi
#stop mysql service if present or else install mysql but here we are using RDS
if [[ -f '/usr/lib/systemd/system/mysqld.service' ]]; then
    sudo systemctl restart mysqld
else
    cd /home/ec2-user/
    sudo wget https://dev.mysql.com/get/mysql80-community-release-el9-1.noarch.rpm
    sudo dnf install mysql80-community-release-el9-1.noarch.rpm -y
    sudo dnf install mysql-community-server -y
    sleep 30
    sudo systemctl start mysqld
fi

