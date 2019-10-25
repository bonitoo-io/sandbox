#!/bin/bash -x


# - run: sudo apt-get install nodejs

sudo curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash
sudo apt-get install nodejs
node -v
npm -v

