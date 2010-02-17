#!/bin/bash -x

# # Installl rvm
# mkdir -p ~/.rvm/src/ 
# cd ~/.rvm/src
# rm -rf ./rvm/ 
# git clone git://github.com/wayneeseguin/rvm.git
# cd rvm && ./install

# # Install common rubies
# source $HOME/.rvm/scripts/rvm
# rvm install 1.8.7

wget ftp://ftp.ruby-lang.org/pub/ruby/1.8/ruby-1.8.7-p248.tar.gz -O /tmp/ruby.tar.gz
cd /tmp && tar -zxvf ruby.tar.gz
cd ruby*
./configure && make && make install
cd .. && rm -rf ruby*
