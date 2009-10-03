#
# Cookbook Name:: locales
# Recipe:: default
#
# Copyright 2009, Sidney Burks
#
# All rights reserved - Do Not Redistribute

package "locales"

execute "sudo locale-gen en_GB.UTF-8"
execute "/usr/sbin/update-locale LANG=en_GB.UTF-8"

