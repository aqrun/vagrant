# Virtual Box Ubuntu configure

## Directory

* -vagrant
    * -etc
        * -nginx
           * -servers
               * localhost.conf
           * nginx.conf
* -www
* -logs
* -apps
* -java
* -go
* -rust

## Config

* `sudo mount -t vboxsf workspace /home/aqrun/workspace -o uid=1000,gid=1000`
* `workspace /home/aqrun/workspace vboxsf defaults 0 0`
* `VBoxManage.exe setextradata ubuntu1804 VBoxInternal2/SharedFoldersEnableSymlinksCreate/workspace 1`
* `VBoxManage.exe getextradata workspace enumerate`
