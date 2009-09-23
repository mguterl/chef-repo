#
# Cookbook Name:: upgrade
# Recipe:: default
#
# Copyright 2009, Sidney Burks
#
# All rights reserved - Do Not Redistribute



execute "apt-get update"
execute "apt-get dist-upgrade"
execute "apt-get upgrade"
