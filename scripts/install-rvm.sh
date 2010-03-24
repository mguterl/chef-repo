#!/bin/bash -x

# Create /etc/rvmrc
#echo 'export rvm_path=/opt/rvm' > /etc/rvmrc


# Install rvm
#mkdir -p /opt/rvm/src/ 
#cd /opt/rvm/src
#rm -rf ./rvm/ 
#git clone --depth 1 git://github.com/wayneeseguin/rvm.git



mkdir -p ~/.rvm/src/ && cd ~/.rvm/src && rm -rf ./rvm/ && git clone --depth 1
git://github.com/wayneeseguin/rvm.git && cd rvm && ./install --auto


# Configure System /etc/profile and/or /etc/bash.bashrc
#echo 'if [[ -s /opt/rvm/scripts/rvm ]] ; then source /opt/rvm/scripts/rvm ;
#fi' > /etc/profile

# Install common rubies
#source /opt/rvm/scripts/rvm
rvm install ree  && rvm ree --default

