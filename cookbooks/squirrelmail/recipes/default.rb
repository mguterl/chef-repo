#
# Cookbook Name:: squirrelmail
# Recipe:: default
#
# Copyright 2009, Sidney Burks
#
# All rights reserved - Do Not Redistribute

include_recipe "php2"


packages = %w[
squirrelmail
squirrelmail-locales
php-pear
]

packages.each do |pkg|
	    package pkg
end

