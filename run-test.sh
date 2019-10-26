#!/bin/bash 

sudo docker run -p9999:9999 --name influx-v2 quay.io/influxdb/influx:nightly /entrypoint.sh influxd --e2e-testing=true &
sleep 30
curl http://localhost:9999 || return $?

source ./env

npm i
npm test

#node src/utils/htmlReport.js
#node src/utils/junitReport.js
