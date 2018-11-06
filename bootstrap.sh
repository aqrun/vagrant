#!/bin/bash

# sudo chmod +x bootstrap.sh
# 备份文件
mv /etc/nginx/nginx.conf /etc/nginx/nginx.conf.bak
mv /etc/php/7.1/fpm/pool.d/www.conf /etc/php/7.1/fpm/pool.d/www.conf.bak
mv /etc/php/7.1/fpm/php.ini /etc/php/7.1/fpm/php.ini.bak
# 链接nginx.conf
ln -s /home/aqrun/workspace/vagrant/etc/nginx/nginx.conf /etc/nginx/nginx.conf
ln -s /home/aqrun/workspace/vagrant/etc/php/7.1/fpm/php.ini /etc/php/7.1/fpm/php.ini
ln -s /home/aqrun/workspace/vagrant/etc/php/7.1/fpm/pool.d/www.conf /etc/php/7.1/fpm/pool.d/www.conf