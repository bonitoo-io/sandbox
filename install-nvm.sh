#!/bin/bash -x

#uninstall 
rm -rf ~/.nvm
rm -rf ~/.npm
rm -rf ~/.bower
rm -rf $NVM_DIR ~/.npm ~/.bower
unset NVM_DIR NVM_BIN
rm -rf node*

sudo apt-get update
sudo apt-get -y install build-essential checkinstall libssl-dev

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.1/install.sh | bash



export NVM_DIR="/home/circleci/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

nvm install stable
nvm use stable #and set a default with alias: nvm alias default node.
nvm alias default stable



#install what I want
#sudo apt-get -y remove nodejs
#wget https://nodejs.org/dist/v10.16.3/node-v10.16.3-linux-x64.tar.gz
#tar xvfz ./node-v10.16.3-linux-x64.tar.gz

#export PATH=./node-v10.16.3-linux-x64/bin:$PATH

