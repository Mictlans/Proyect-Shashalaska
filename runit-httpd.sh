#!/bin/sh

docker rm $(docker ps -a -q)
docker build -t apachehttpd .
docker run -itd --name apach -p 8080:80 apachehttpd
docker exec -it apach bash
docker logs apach




