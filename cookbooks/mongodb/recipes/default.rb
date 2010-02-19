#
# Cookbook Name:: mongodb
# Recipe:: default
#
# Copyright 2010, Sidney Burks
#
# All rights reserved - Do Not Redistribute
#


case node[:platform] 
when "debian"
	remote_file '/etc/apt/sources.list.d/mongodb.list' do
		source 'mongodb.debian.list'
	end
end


execute "apt-get update -q -m -f -y"

package "mongodb" do
	action :install
	options "--force-yes"
end
