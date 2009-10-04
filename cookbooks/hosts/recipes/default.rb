#
# Cookbook Name:: hosts
# Recipe:: default
#
# Copyright 2009, Sidney Burks
#
# All rights reserved - Do Not Redistribute

template "/etc/hosts" do
  source "hosts.erb"
end
