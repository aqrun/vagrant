# Virtual Box Ubuntu configure

## Directory

* -workspace                            
    * -vagrant
        * -etc
            * -nginx
            * -servers
                * localhost.conf
            * nginx.conf
    * -www
    * -logs
        * -nginx
    * -db
    * -apps
    * -java
    * -go
    * -rust

## Config

* `sudo mount -t vboxsf workspace /home/aqrun/workspace -o uid=1000,gid=1000`
* `workspace /home/aqrun/workspace vboxsf uid=1000,gid=1000,rw,dmode=755,fmode=755,noauto,x-systemd.automount 0 0`
* `VBoxManage.exe setextradata ubuntu1804 VBoxInternal2/SharedFoldersEnableSymlinksCreate/workspace 1`
* `VBoxManage.exe getextradata ubuntu1804 enumerate`

## php 7.1 mysql

* apt-get install gcc make autoconf libc-dev pkg-config
* apt-add-repository ppa:ondrej/php
* apt-get install -y php7.1 php7.1-cgi php7.1-cli  php7.1-fpm php7.1-phpdbg php7.1-bcmath php7.1-bz2 php7.1-common php7.1-curl php7.1-dba php7.1-enchant php7.1-gd php7.1-gmp php7.1-imap php7.1-interbase php7.1-intl php7.1-json php7.1-ldap php7.1-mbstring php7.1-mcrypt php7.1-mysql php7.1-odbc php7.1-pspell php7.1-readline php7.1-recode php7.1-snmp php7.1-soap php7.1-sqlite3 php7.1-sybase php7.1-tidy php7.1-xml php7.1-xmlrpc php7.1-zip php7.1-opcache php7.1-xsl php7.1-dev
* apt-get install mysql-server
* sudo mysql_secure_installation
* sql_mode=NO_AUTO_VALUE_ON_ZERO,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION,PIPES_AS_CONCAT,ANSI_QUOTES
* grant all privileges on *.* to 'root'@'%' identified by '123456';
* select host,user,plugin,authentication_string from user;
* update user set plugin='mysql_native_password',authentication_string='xxx' where host='localhost' and user='root';
* flush privileges; 

## Vagrant

* vagrant box list
* vagrant box add [boxname] [box file path]
* vagrant init
* vagrant up
* vagrant reload --provision
* vagrant halt
* vagrant destroy
* vagrant package --output xx.box

## mysql

* root Abc-123456

## yii2

* composer global require "fxp/composer-asset-plugin"

## composer

* composer config -g repo.packagist composer https://packagist.phpcomposer.com

## yarn

* install
    * https://www.yarnpkg.com/zh-Hans/docs/install#debian-stable
* node-sass
    * yarn config set registry https://registry.npm.taobao.org -g
    * yarn config set sass_binary_site http://cdn.npm.taobao.org/dist/node-sass -g

## VBox ubuntu server intall guest additions

```shell
apt-get update
apt-get upgrade
apt-get install dkms
sudo aptitude install build-essential
sudo reboot
# 设备 -> 安装增强工具
sudo  mount /dev/cdrom /mnt/
sudo  /mnt/VBoxLinuxAdditions-x86.run
sudo umount /mnt/
```