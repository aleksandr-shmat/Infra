#!/bin/bash
#Adding key and repo for MongoDB 3.4
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv A15703C6
echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.4 multiverse" > /etc/apt/sources.list.d/mongodb-org-3.4.list
#checking updates
sudo apt update
#installing MongoDB 3.4
sudo apt install -y mongodb-org
sudo systemctl start mongod
sudo systemctl enable mongod
#checking status MongoDB 3.4
sudo systemctl status mongod

