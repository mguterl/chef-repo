#
# Cookbook Name:: php
# Recipe:: default
#
# Copyright 2009, Sidney Burks
#
# All rights reserved - Do Not Redistribute

include_recipe "apache"
include_recipe "php"

package "libapache2-mod-php5"

service "apache2" do
	action :restart
end
