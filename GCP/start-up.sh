#!/bin/bash
#check update
sudo apt update
#installing ruby and bundler
sudo apt install -y ruby-full ruby-bundler build-essential
#check version ruby and bundler
echo "###################################################"
echo "Version Ruby is:"
ruby -v
echo "###################################################"
echo "Version Bundler is:"
bundler -v
echo "###################################################"
#Adding key and repo for MongoDB 3.4
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv A15703C6
echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.4 multiverse" > /etc/apt/sources.list.d/mon$
#checking updates
sudo apt update
#installing MongoDB 3.4
sudo apt install -y mongodb-org
sudo systemctl start mongod
sudo systemctl enable mongod
#checking status MongoDB 3.4
sudo systemctl status mongod
#installing Puma service
git clone -b monolith https://github.com/express42/reddit.git
cd reddit && bundle install
puma -d
ps aux | grep puma

