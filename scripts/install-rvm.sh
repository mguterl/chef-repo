
# Installl rvm
mkdir -p ~/.rvm/src/ 
cd ~/.rvm/src
rm -rf ./rvm/ 
git clone git://github.com/wayneeseguin/rvm.git
cd rvm && ./install

# Install common rubies
source $HOME/.rvm/scripts/rvm
rvm install 1.8.7

