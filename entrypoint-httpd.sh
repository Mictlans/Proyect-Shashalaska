#!/bin/sh

sed -i 's/#ServerName www.example.com:80/ServerName localhost:8080/g' "/etc/httpd/conf/httpd.conf"
/sbin/httpd -k start
echo "<h1 />Hola Mundo de los Contenedores" > /var/www/html/hola.html
while true
do
	sleep 5
done
