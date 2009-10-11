#
# Cookbook Name:: lowmem
# Recipe:: default
#
# Copyright 2009, Sidney Burks
#
# All rights reserved - Do Not Redistribute

template '/etc/make.conf' do
	source 'make.conf.erb'
end
