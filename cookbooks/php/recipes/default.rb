#
# Cookbook Name:: php
# Recipe:: default
#
# Copyright 2009, Sidney Burks
#
# All rights reserved - Do Not Redistribute


packages = %w[
libapache3-mod-php5
php5-cli
php5-common
php5-cgi
]

packages.each do |pkg| 
	package pkg
end

#execute "echo 'cgi.fix_pathinfo = 1' >> /etc/php5/cgi/php.ini"

