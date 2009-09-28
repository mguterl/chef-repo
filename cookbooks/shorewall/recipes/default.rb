#
# Cookbook Name:: shorewall
# Recipe:: default
#
# Copyright 2009, Sidney Burks
#
# All rights reserved - Do Not Redistribute

packages = %w[
shorewall
shorewall-doc
]

packages.each do |pkg|
	    package pkg
end

