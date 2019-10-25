#!/bin/bash -x

npm cache clean -f

rm -rf $HOME/.npm/*
rm -rf node*
sudo apt-get -y remove nodejs

wget https://nodejs.org/dist/v10.16.3/node-v10.16.3-linux-x64.tar.gz
tar xvfz ./node-v10.16.3-linux-x64.tar.gz

