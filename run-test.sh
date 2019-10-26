#!/bin/bash

echo "DEBUG: Run docker"
docker run -p9999:9999 --net host --name influx-v2 quay.io/influxdb/influx:nightly /entrypoint.sh influxd --e2e-testing=true &

source ./env

echo "DEBUG: install node_modules"
npm i


echo "DEBUG: make sure influx-v2 has started"
if ! ./check-if-running.sh ; then
    echo "DEBUG: influx did not start"
    exit 1
fi

echo "DEBUG: run test"
npm test

#node src/utils/htmlReport.js
#node src/utils/junitReport.js
