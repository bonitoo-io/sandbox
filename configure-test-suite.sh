#!/bin/bash

cd ./selenium-accept-infl2
sed -i  's/"headless": false/"headless:": true/' bonitoo.conf.json

echo "INFO: Configuration"
cat bonitoo.conf.json



