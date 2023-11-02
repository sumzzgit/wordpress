#!/bin/bash
if [[ -f '/usr/lib/systemd/system/httpd.service' ]]; then 
sudo systemctl stop httpd
else
sudo yum install -y httpd
fi 
