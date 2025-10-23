#!/bin/bash

ipaddr=0.0.0.0

echo "ip address:"
echo $ipaddr

sed -i "s/\"server\"\:\"127.0.0.1\"/\"server\"\:\"$ipaddr\"/g" /usr/local/lib/node_modules/shadowsocks/config.json

cat /usr/local/lib/node_modules/shadowsocks/config.json

ssserver
