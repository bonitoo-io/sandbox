#!/bin/bash 

docker run --net host --name influx-v2 quay.io/influxdb/influx:nightly /entrypoint.sh influxd --e2e-testing=true &
sleep 30


source ./env

npm i
npm test

#node src/utils/htmlReport.js
#node src/utils/junitReport.js
