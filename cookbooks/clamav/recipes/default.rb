#
# Cookbook Name:: clamav
# Recipe:: default
#
# Copyright 2009, Sidney Burks
#
# All rights reserved - Do Not Redistribute


packages = %w[
clamav-base
libclamav5
clamav-daemon
clamav-freshclam
]

packages.each do |pkg|
	    package pkg
end

