#!/bin/bash
set -e
#check update
apt update
#installing ruby and bundler
apt install -y ruby-full ruby-bundler build-essential
#check version ruby and bundler
echo "###################################################"
echo "Version Ruby is:"
ruby -v
echo "###################################################"
echo "Version Bundler is:"
bundler -v
echo "###################################################"

