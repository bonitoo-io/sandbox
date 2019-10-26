#!/bin/bash

cd ./selenium-accept-infl2
sed -i  's/"headless": false/"headless:": true/' bonitoo.conf.json
sed -i  's/"host": "aws-somewhere"/"host": "localhost"' bonitoo.conf.json
sed -i 's/setTimeout(resolve, timeout);/setTimeout(resolve, 12000);/' ./src/pages/basePage.js

echo "INFO: Configuration"
cat bonitoo.conf.json



