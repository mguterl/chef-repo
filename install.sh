#!/bin/bash -x

#run installer with
# wget tiny.cc/chefconfig; bash -x install.sh role 
# role is a json file that describes a roles or runlist to execute.

role=${1:-test.json}

echo 'en_US.UTF-8 UTF-8' > /etc/locale.gen && /usr/sbin/locale-gen
apt-get update -q -m -y
apt-get install locales sudo curl git-core -y
echo "deb http://apt.opscode.com/ jaunty universe" >  /etc/apt/sources.list.d/opscode.list
echo "deb http://apt.opscode.com/ karmic universe" >> /etc/apt/sources.list.d/opscode.list
echo "deb http://apt.opscode.com/ debian contrib"  >> /etc/apt/sources.list.d/opscode.list
curl http://apt.opscode.com/packages@opscode.com.gpg.key | apt-key add -
apt-get update -q -m -y

aptitude install ohai chef rubygems -y
git clone git://github.com/sid137/chef-repo.git /tmp/chef-repo
cd /tmp/chef-repo/chef-solo/
./solo $role.json

