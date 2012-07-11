#!/bin/bash

# http://www.virtualmin.com/documentation/web/nginx

# shutdown apache
/etc/init.d/apache2 stop ; update-rc.d apache2 remove

# install nginx and starts it
apt-get install nginx ; /etc/init.d/nginx start

# related virtualmin packages for nginx
apt-get install webmin-virtualmin-nginx webmin-virtualmin-nginx-ssl
