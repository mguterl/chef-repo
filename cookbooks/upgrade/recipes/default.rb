#
# Cookbook Name:: upgrade
# Recipe:: default
#
# Copyright 2009, Sidney Burks
#
# All rights reserved - Do Not Redistribute


execute 'apt-get dist-upgrade -q -m -f -y'
execute 'apt-get upgrade -q -m -f -y'
