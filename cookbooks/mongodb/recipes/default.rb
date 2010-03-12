#
# Cookbook Name:: mongodb
# Recipe:: default
#
# Copyright 2010, Sidney Burks
#
# All rights reserved - Do Not Redistribute
# http://www.linode.com/stackscripts/view/?StackScriptID=538


case node[:platform] 
when "debian"
	remote_file '/etc/apt/sources.list.d/mongodb.list' do
		source 'mongodb.debian.list'
	end
end


execute "aptitude update -f -y"

package "mongodb-stable" do
	action :install
	options "--force-yes"
end
