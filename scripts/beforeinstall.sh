#!/bin/bash
if [[ -d "/home/ec2-user/wordpress/" ]]; then
sudo rm -r -f /home/ec2-user/wordpress/*
else
sudo mkdir -p /home/ec2-user/wordpress/
fi

if [[ -d "/var/www/wordpress" ]]; then
sudo rm -r -f /var/www/wordpress/*
else
sudo mkdir /var/www/wordpress
fi

