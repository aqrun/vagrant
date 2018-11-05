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
* `workspace /home/aqrun/workspace vboxsf defaults 0 0`
* `VBoxManage.exe setextradata ubuntu1804 VBoxInternal2/SharedFoldersEnableSymlinksCreate/workspace 1`
* `VBoxManage.exe getextradata workspace enumerate`

## php 7.1 mysql

* apt-add-repository ppa:ondrej/php
* apt-get install -y php7.1 php7.1-cgi php7.1-cli php7.1-dev php7.1-fpm php7.1-phpdbg php7.1-bcmath php7.1-bz2 php7.1-common php7.1-curl php7.1-dba php7.1-enchant php7.1-gd php7.1-gmp php7.1-imap php7.1-interbase php7.1-intl php7.1-json php7.1-ldap php7.1-mbstring php7.1-mcrypt php7.1-mysql php7.1-odbc php7.1-pspell php7.1-readline php7.1-recode php7.1-snmp php7.1-soap php7.1-sqlite3 php7.1-sybase php7.1-tidy php7.1-xml php7.1-xmlrpc php7.1-zip php7.1-opcache php7.1-xsl
* apt-get install mysql-server
* sudo mysql_secure_installation

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

* composer global require "fxp/composer-ass
et-plugin"

## composer

* composer config -g repo.packagist composer https://packagist.phpcomposer.com

## yarn

* install
    * https://www.yarnpkg.com/zh-Hans/docs/install#debian-stable
* node-sass
    * yarn config set sass_binary_site http://cdn.npm.taobao.org/dist/node-sass -g