#!/bin/bash

source ./env

echo "DEBUG: install node_modules"
npm i

echo "DEBUG: Run docker"
sudo docker run -d -p 9999:9999 --net host -v /var/run/docker.sock:/var/run/docker.sock --name influx-v2 quay.io/influxdb/influx:nightly /entrypoint.sh influxd --e2e-testing=true

echo "sleeping 30 seconds"
sleep 30

echo "DEBUG: make sure influx-v2 has started"
if ! ../check-if-running.sh ; then
    echo "DEBUG: influx did not start"
    exit 1
fi


echo "DEBUG: run test"
npm test -- features/onboarding/onboarding.feature

#node src/utils/htmlReport.js
#node src/utils/junitReport.js
