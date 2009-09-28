#
# Cookbook Name:: courier
# Recipe:: default
#
# Copyright 2009, Sidney Burks
#
# All rights reserved - Do Not Redistribute

packagees = %w[
courier-base
courier-authdaemon
courier-authlib-mysql
courier-imap
courier-imap-ssl
courier-ssl
]

packages.each do |pkg|
	    package pkg
end

