#!/bin/bash -x

# Installl rvm
mkdir -p ~/.rvm/src/ 
rm -rf ./rvm/ 
cd ~/.rvm/src
git clone --depth 1 git://github.com/wayneeseguin/rvm.git
cd rvm && ./install

# Install common rubies
source $HOME/.rvm/scripts/rvm
rvmsudo install ree 
rvm ree --default

