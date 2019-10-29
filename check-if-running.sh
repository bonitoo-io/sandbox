#!/bin/bash

n=0
MMAX=60
WAITME=3

ping -c 4 localhost

sudo netstat -tlnp 

while [ $n -lt $MMAX ]
do
    if curl -v http://localhost:9999/ --connect-timeout 60  --max-time 60 ; then
        echo "Influx is running"
 #       break;
#    else
#        echo "failed to connect to Influx at localhost:9999"
#        exit 1
    fi
    sleep $WAITME
    n=$[n+1]
done

if [ $n -eq $MMAX ]; then 
    exit 1
fi
