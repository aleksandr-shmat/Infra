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

