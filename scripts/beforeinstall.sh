#!/bin/bash
if [[ -d "/home/ec2-user/wordpress/" ]]; then
    sudo rm -r -f /home/ec2-user/wordpress/*
else
    sudo mkdir -p /home/ec2-user/wordpress
fi

if [[ -d "/home/ec2-user/wordpress/test" ]]; then
    sudo rm -r -f /home/ec2-user/wordpress/test/*
else
    sudo mkdir -p /home/ec2-user/wordpress/test
fi

if [[ -d "/usr/share/nginx/wordpress" ]]; then
    sudo rm -r -f /usr/share/nginx/wordpress/*
else
    sudo mkdir -p /usr/share/nginx/wordpress
    sudo chown -R nginx:nginx /usr/share/nginx/wordpress
fi

#instaling php dependencies
sudo yum install php8.1.x86_64 php8.1-gd.x86_64 php8.1-soap.x86_64 php8.1-intl.x86_64 php8.1-mysqlnd.x86_64 php8.1-pdo.x86_64 php8.1-fpm.x86_64 php8.1-odbc.x86_64 php8.1-common.x86_64 php8.1-xml.x86_64 -y 2>/dev/null
