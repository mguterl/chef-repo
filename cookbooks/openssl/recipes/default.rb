#
# Cookbook Name:: openssl
# Recipe:: default
#
# Copyright 2009, Sidney Burks
#
# All rights reserved - Do Not Redistribute

packages = %w[
openssl
ssl-cert
libssl-dev
libopenssl-ruby 
libopenssl-ruby1.9
]

packages.each do |pkg| 
	package pkg
end

