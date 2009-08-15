#
# Cookbook Name:: quick_start
# Recipe:: default
#
# Copyright 2009, Sidney Burks
#
# All rights reserved - Do Not Redistribute
#

template "/tmp/deep_thought.txt" do
  source "deep_thought.txt.erb"
  varibles :deep_thought => node[:deep_thought]
  action :create
end
