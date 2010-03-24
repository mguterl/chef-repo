#!/bin/bash -x


# Install rvm
mkdir -p /opt/rvm/src/ 
cd /opt/rvm/src
rm -rf ./rvm/ 
git clone --depth 1 git://github.com/wayneeseguin/rvm.git
cd rvm
./install --auto


#mkdir -p ~/.rvm/src/ && cd ~/.rvm/src && rm -rf ./rvm/ && git clone --depth 1
#git://github.com/wayneeseguin/rvm.git && cd rvm && ./install --auto


# Install common rubies
rvm install 1.8.7 
rvm 1.8.7 --default
rvm 1.8.7 --default

source /etc/profile
