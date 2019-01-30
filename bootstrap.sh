#!/bin/bash 
# sudo chmod +x bootstrap.sh
# 备份文件
file_nginx_conf="/etc/nginx/nginx.conf"
file_fpm_conf="/etc/php/7.1/fpm/pool.d/www.conf"
file_php_ini="/etc/php/7.1/fpm/php.ini"

if [ -f "$file_nginx_conf" ] then
    mv /etc/nginx/nginx.conf /etc/nginx/nginx.conf.bak
fi

if [ -f "$file_fpm_conf" ] then
    mv /etc/php/7.1/fpm/pool.d/www.conf /etc/php/7.1/fpm/pool.d/www.conf.bak
fi

if [ -f "$file_php_ini" ] then
    mv /etc/php/7.1/fpm/php.ini /etc/php/7.1/fpm/php.ini.bak
fi

# 链接nginx.conf
sudo ln -s /home/aqrun/workspace/vagrant/etc/nginx/nginx.conf /etc/nginx/nginx.conf \
sudo ln -s /home/aqrun/workspace/vagrant/etc/php/7.1/fpm/php.ini /etc/php/7.1/fpm/php.ini \
sudo ln -s /home/aqrun/workspace/vagrant/etc/php/7.1/fpm/pool.d/www.conf /etc/php/7.1/fpm/pool.d/www.conf