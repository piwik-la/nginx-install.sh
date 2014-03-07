#!/bin/sh
 
wget http://nginx.org/keys/nginx_signing.key
apt-key add nginx_signing.key
echo "deb http://nginx.org/packages/ubuntu/ precise nginx
deb-src http://nginx.org/packages/ubuntu/ precise nginx" > /etc/apt/sources.list.d/nginx.list
apt-get update
apt-get install nginx -y
