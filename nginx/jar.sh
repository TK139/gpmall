#!/bin/bash
nohup java -jar /root/nginx/jar/shopping-provider-0.0.1-SNAPSHOT.jar &
sleep 5
nohup java -jar /root/nginx/jar/user-provider-0.0.1-SNAPSHOT.jar &
sleep 5
nohup java -jar /root/nginx/jar/gpmall-shopping-0.0.1-SNAPSHOT.jar &
sleep 5
nohup java -jar /root/nginx/jar/gpmall-user-0.0.1-SNAPSHOT.jar &
sleep 5
 
