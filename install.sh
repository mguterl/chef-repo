#!/bin/bash -x

#run installer with
# wget tiny.cc/chefconfig; bash -x install.sh role 
# role is a json file that describes a roles or runlist to execute.

role=${1:-test.json}
apt-get update -q -m -y

# Configure locale settings
apt-get install locales  -y
echo 'en_US.UTF-8 UTF-8' > /etc/locale.gen && /usr/sbin/locale-gen

apt-get install sudo curl git-core -y

# Download server config
git clone git://github.com/sid137/chef-repo.git /tmp/chef-repo
cd /tmp/chef-repo/chef-solo/

# Install Chef sources
echo "deb http://apt.opscode.com/ jaunty universe" >  /etc/apt/sources.list.d/opscode.list
echo "deb http://apt.opscode.com/ karmic universe" >> /etc/apt/sources.list.d/opscode.list
echo "deb http://apt.opscode.com/ debian contrib"  >> /etc/apt/sources.list.d/opscode.list
apt-get update -q -m -y

curl http://apt.opscode.com/packages@opscode.com.gpg.key | apt-key add -

# Install ruby, rubygems, and chef
source ./scripts/install-rvm.sh
aptitude install ohai chef -y

# Run server ssetup
./solo $role.json


# ZSH function I use to launch an installtion 

# function initialize {
#         rm .ssh/known_hosts
#         server=${1:=${VPS}}
#         role=$2
#         : ${role:=rails}
#         ssh-copy-id -i ~/.ssh/id_rsa root@$server
#         ssh root@$1 "wget http://github.com/sid137/chef-repo/raw/master/install.sh -O install.sh && /bin/bash -x install.sh ${role}"
# }
# EOF
