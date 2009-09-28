#
# Cookbook Name:: spamass
# Recipe:: default
#
# Copyright 2009, Sidney Burks
#
# All rights reserved - Do Not Redistribute
#

packages = %w[
spamassassin
spamc
]

packages.each do |pkg|
	    package pkg
end

