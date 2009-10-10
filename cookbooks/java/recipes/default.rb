#
# Cookbook Name:: java
# Recipe:: default
#
# Copyright 2009, Sidney Burks
#
# All rights reserved - Do Not Redistribute


packages = %w[
	sun-java6-jre 
	sun-java6-plugin 
	sun-java6-fonts
]


packages.each do |pkg
	package pkg
end
