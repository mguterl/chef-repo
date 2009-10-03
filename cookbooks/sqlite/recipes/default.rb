#
# Cookbook Name:: sqlite
# Recipe:: default
#
# Copyright 2009, Sidney Burks
#
# All rights reserved - Do Not Redistribute

include_recipe "swig" 

packages = %w[
sqlite3 
libsqlite3-dev
libsqlite3-ruby 
]

gem_package "sqlite3-ruby" 

packages.each do |pkg|
  package pkg do
	action :upgrade
  end
end
