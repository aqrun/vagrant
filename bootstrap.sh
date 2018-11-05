#!/bin/bash

# sudo chmod +x bootstrap.sh
# 备份文件
move /etc/nginx/nginx.conf /etc/nginx/nginx.conf.bak
# 链接nginx.conf
ln -s /home/aqrun/workspace/vagrant/etc/nginx/nginx.conf /etc/nginx/nginx.conf