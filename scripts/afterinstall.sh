#!/bin/bash
sudo unzip /home/ec2-user/wordpress/*.zip
sudo rm -f /home/ec2-user/wordpress/*.zip
sudo cp /home/ec2-user/wordpress/* /var/www/wordpress/
sudo cp /etc/httpd/conf/httpd.conf /etc/httpd/conf/httpd.conf.backup
sudo sudo sed -i '124c\ DocumentRoot "/var/www/wordpress"' /etc/httpd/conf/httpd.conf
sudo sudo sed -i '169c\ DirectoryIndex index.php index.html' /etc/httpd/conf/httpd.conf
sudo systemctl start httpd

