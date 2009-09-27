#
# Cookbook Name:: lighttpd
# Recipe:: default
#
# Copyright 2009, Sidney Burks
#
# All rights reserved - Do Not Redistribute


package "lighttpd"

template "/etc/lighttpd/lighttpd.conf" do
  source "lighttpd.conf.erb"
end

service "lighttpd" do
	enabled true
	supports :status => false, :restart => true, :reload => true
	action :start
end
