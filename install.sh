#!/bin/bash
apt-get install curl
echo "deb http://apt.opscode.com/ jaunty universe" >/etc/apt/sources.list.d/opscode.list
curl http://apt.opscode.com/packages@opscode.com.gpg.key | sudo apt-key add -
sudo apt-get update

aptitude install ohai chef rubygems -y
