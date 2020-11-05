#!/bin/bash
set -e
#Adding key and repo for MongoDB 3.4
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv A15703C6
echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.4 multiverse" > /etc/apt/sources.list.d/mongodb-org-3.4.list
#checking updates
apt-get update
#installing MongoDB 3.4
apt-get install -y mongodb-org
sudo systemctl enable mongod

