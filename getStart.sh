#!/bin/bash

yum install -y docker 
systemctl start docker.service
systemctl enable docker

docker build -t shadowsocks .


docker run -d --restart=always -p80:8388 shadowsocks:latest 


docker ps

docker logs -f -t `docker ps -a |awk '{print $1}' | grep [0-9a-z]`
