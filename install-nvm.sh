#!/bin/bash -x


npm --version # && nvm use 10.16
npm cache clean -f
npm install -g n
npm --version # && nvm use 10.16
cd selenium-accept-infl2
sudo /opt/circleci/.nvm/versions/node/v6.1.0/bin/n stable
npm --version
which npm
npm install

find /usr/local/n/versions/node/12.13.0
