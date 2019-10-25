#!/bin/bash -x

#uninstall 
rm -rf ~/.nvm
rm -rf ~/.npm
rm -rf ~/.bower
rm -rf $NVM_DIR ~/.npm ~/.bower
unset NVM_DIR NVM_BIN
rm -rf node*



#install what I want
sudo apt-get -y remove nodejs
wget https://nodejs.org/dist/v10.16.3/node-v10.16.3-linux-x64.tar.gz
tar xvfz ./node-v10.16.3-linux-x64.tar.gz

export PATH=./node-v10.16.3-linux-x64/bin:$PATH

