#
# Cookbook Name:: php
# Recipe:: default
#
# Copyright 2009, Sidney Burks
#
# All rights reserved - Do Not Redistribute

include_recipe "php"
include_recipe "nginx" 

package "php5-xcache"

service "lighttpd" do
	action :restart
end
