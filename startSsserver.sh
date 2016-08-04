#!/bin/sh

nohup ssserver > /data/app/logs/ssserver.log &
 
tail -100f /data/app/logs/ssserver.log
