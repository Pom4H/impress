#!/bin/bash
sudo apt-get -y update
sudo apt-get -y install mc
sudo apt-get -y install wget
sudo apt-get -y install build-essential openssl libssl-dev pkg-config
cd /usr/src
sudo wget http://nodejs.org/dist/v0.10.28/node-v0.10.28.tar.gz
sudo tar zxf node-v0.10.28.tar.gz
cd node-v0.10.28
sudo ./configure
sudo make
sudo make install
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list
sudo apt-get -y update
sudo apt-get -y install mongodb-org
sudo service mongod start
sudo update-rc.d mongod defaults
mkdir /impress
cd /impress
sudo npm install mongodb
sudo npm install nodemailer
sudo npm install websocket
sudo npm install geoip-lite
sudo npm install impress
