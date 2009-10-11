#
# Cookbook Name:: toolchain
# Recipe:: default
#
# Copyright 2009, Sidney Burks
#
# All rights reserved - Do Not Redistribute
#


packages = %w[
curl
wget 

autoconf
automake
binutils-doc
bison
build-essential
flex
help2man
libtool 
patch
ruby1.8-dev
zlib1g 
zlib1g-dev 
zlibc

libc6 
libevent-dev
libbz2-dev
libpcre3 
libpcre3-dev 
libpcrecpp0 
libssl0.9.8 
libreadline5
libreadline5-dev
libxml2
libxml2-dev  
libxslt1.1
libxslt1-dev  

libmcrypt-dev 
]
#libmhash-dev 
#libmhash2 
#libcurl4-openssl-dev 
#libpq-dev 
#libpq5 

include_recipe "openssl"

packages.each do |pkg|
	package pkg
end
