#
# Cookbook Name:: monit
# Recipe:: default
#
# Copyright 2009, Sidney Burks
#
# All rights reserved - Do Not Redistribute


package "monit"

template '/etc/default/monit' do
	source 'monit.default.erb'
end
