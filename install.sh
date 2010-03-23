#!/bin/bash -x

#run installer with
# wget tiny.cc/chefconfig; bash -x install.sh role 
# role is a json file that describes a roles or runlist to execute.

export REPO=/tmp/chef-repo

role=${1:-test.json}
aptitude update -f -y

# Configure locale settings
aptitude install locales  -f -y
echo 'en_US.UTF-8 UTF-8' > /etc/locale.gen && /usr/sbin/locale-gen

aptitude install git-core -f -y

# Download server config
rm -rf $REPO
git clone git://github.com/sid137/chef-repo.git $REPO

# Install core, ruby, rubygems, and chef
$REPO/scripts/aptitude-hold.sh
$REPO/scripts/install-core.sh
#$REPO/scripts/install-ruby.sh
#$REPO/scripts/install-rubygems.sh
$REPO/scripts/install-rvm.sh
$REPO/scripts/install-chef.sh


# Run server setup
cd $REPO/chef-solo/
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
