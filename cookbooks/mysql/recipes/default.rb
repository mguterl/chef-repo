#
# Cookbook Name:: mysql
# Recipe:: default
#
# Copyright 2009, Sidney Burks
#
# All rights reserved - Do Not Redistribute


packages = %w[
mysql-server
mysql-client
mysql-common

libmysql-ruby
libmysql-ruby1.8 

]


packages.each do |pkg|
  package pkg
end

#execute "mysqladmin -u root password mypass"
