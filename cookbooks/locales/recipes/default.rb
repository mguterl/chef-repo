#
# Cookbook Name:: locales
# Recipe:: default
#
# Copyright 2009, Sidney Burks
#
# All rights reserved - Do Not Redistribute

package "locales"

execute "locale-gen en_US.UTF-8 UTF-8"
execute "/usr/sbin/update-locale LANG=en_US.UTF-8"

