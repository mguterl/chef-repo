#
# Cookbook Name:: fcgi
# Recipe:: default
#
# Copyright 2009, Sidney Burks
#
# All rights reserved - Do Not Redistribute

packages = %w[
libfcgi 
libfcgi-perl 
libfcgi
]

packages.each |pkg| do 
	package pkg
end


