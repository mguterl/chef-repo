#!/bin/bash -x


# Install rvm
mkdir -p /opt/rvm/src/ 
cd /opt/rvm/src
rm -rf ./rvm/ 
git clone --depth 1 git://github.com/wayneeseguin/rvm.git
cd rvm
./install --auto

source /etc/profile

#mkdir -p ~/.rvm/src/ && cd ~/.rvm/src && rm -rf ./rvm/ && git clone --depth 1
#git://github.com/wayneeseguin/rvm.git && cd rvm && ./install --auto


# Install common rubies
rvm install ree 
rvm ree --default

