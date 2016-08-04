#!/bin/sh



if test $( pgrep -f sss | wc -l ) -eq 0 
then 
echo "进程不存在" 
nohup /usr/local/bin/ssserver > /data/app/logs/ssserver.log &
ufw allow 8388
else 
echo "存在进程" 
fi 

