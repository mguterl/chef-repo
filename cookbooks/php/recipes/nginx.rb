#
# Cookbook Name:: php
# Recipe:: default
#
# Copyright 2009, Sidney Burks
#
# All rights reserved - Do Not Redistribute

include_recipe "php"
include_recipe "lighttpd" 

execute "echo 'cgi.fix_pathinfo = 1' >> /etc/php5/cgi/php.ini"


service "lighttpd" do
	action :restart
end
