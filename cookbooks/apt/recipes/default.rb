#
# Cookbook Name:: apt
# Recipe:: default
#
# Copyright 2009, Sidney Burks
#
# All rights reserved - Do Not Redistribute

case node[:platform] 
when "debian"
	template '/etc/apt/sources.list.d/lenny.non-free.list' do
		source 'lenny.non-free.list.erb'
	end
end


execute "apt-get update -q -m -f -y"
