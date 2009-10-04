#
# Cookbook Name:: toolchain
# Recipe:: default
#
# Copyright 2009, Sidney Burks
#
# All rights reserved - Do Not Redistribute
#


packages = %w[
build-essential
binutils-doc
autoconf
automake
libtool 
help2man
flex
bison
ruby1.8-dev
libxml2
libxml2-dev  
libxslt1.1
libxslt1-dev  
zlib1g 
zlib1g-dev 
zlibc
wget 
curl

libc6 
libpcre3 
libpcre3-dev 
libpcrecpp0 
libssl0.9.8 
libreadline5
libreadline5-dev

]
include_recipe "openssl"

packages.each do |pkg|
	package pkg
end
