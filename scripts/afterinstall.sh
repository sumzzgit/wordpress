#!/bin/bash
#sudo unzip /home/ec2-user/wordpress/*.zip
#sudo rm -f /home/ec2-user/wordpress/*.zip
# sudo cp -r /home/ec2-user/wordpress/*.yml /usr/share/nginx/wordpress/
sudo cp -r /home/ec2-user/wordpress/*.yml /home/ec2-user/wordpress/test/
sudo cp -r /home/ec2-user/wordpress/scripts /home/ec2-user/wordpress/test/
sudo cp -r /home/ec2-user/wordpress/nginx.co* /etc/nginx/
sudo cp -r /home/ec2-user/wordpress/* /usr/share/nginx/wordpress/
#sudo cp /etc/httpd/conf/httpd.conf /etc/httpd/conf/httpd.conf.backup
#sudo sudo sed -i '124c\ DocumentRoot "/var/www/wordpress"' /etc/httpd/conf/httpd.conf
#sudo sudo sed -i '169c\ DirectoryIndex index.php index.html' /etc/httpd/conf/httpd.conf
sudo systemctl start nginx
