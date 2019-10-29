#!/bin/bash

n=0
MMAX=15
WAITME=3

sudo less /etc/hosts

ping -c 4 localhost

sudo netstat -tlnp 

while [ $n -lt $MMAX ]
do
    if curl -v http://localhost:9999/ ; then
        echo "Influx is running"
        break;
    fi
    sleep $WAITME
    n=$[n+1]
done

if [ $n -eq $MMAX ]; then 
    exit 1
fi
