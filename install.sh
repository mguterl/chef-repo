#!/bin/bash

apt-get install sudo -y
apt-get install curl git-core -y
echo "deb http://apt.opscode.com/ jaunty universe" >/etc/apt/sources.list.d/opscode.list
echo "deb http://apt.opscode.com/ debian contrib" >>/etc/apt/sources.list.d/opscode.list
curl http://apt.opscode.com/packages@opscode.com.gpg.key | apt-key add -
apt-get update

aptitude install ohai chef rubygems -y
