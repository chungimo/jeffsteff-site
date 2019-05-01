#!/usr/bin/env bash
mkdir -p /var/www/jeffsteff
mkdir -p /var/www/jeffsteff-mobile
cp ./jeffsteff/* /var/www/jeffsteff
cp ./jeffsteff-mobile/* /var/www/jeffsteff
cp -f ./configs/haproxy.conf /etc/haproxy/
cp ./configs/jeffsteff.conf /etc/httpd/conf.d/
cp ./configs/htaccess /var/www/jeffsteff/.htaccess
