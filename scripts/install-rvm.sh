#!/bin/bash -x

# Install rvm
mkdir -p /opt/rvm/src/ 
cd /opt/rvm/src
rm -rf ./rvm/ 
git clone --depth 1 git://github.com/wayneeseguin/rvm.git
cd rvm && ./install


# Configure System /etc/profile and/or /etc/bash.bashrc
echo 'if [[ -s /opt/rvm/scripts/rvm ]] ; then source /opt/rvm/scripts/rvm ;
fi' > /etc/profile

# Install common rubies
source $HOME/.rvm/scripts/rvm
rvmsudo install ree 
rvm ree --default

