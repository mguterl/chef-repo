#
# Cookbook Name:: postfix
# Recipe:: default
#
# Copyright 2009, Sidney Burks
#
# All rights reserved - Do Not Redistribute


packages = %w[
postfix
libsasl2 
sasl2-bin 
libsasl2-modules 
libdb3-util 
procmail
postfix-mysql
]

packages.each do |pkg| 
	package pkg do
		action :upgrade
	end
end
