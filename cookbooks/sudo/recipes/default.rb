#
# Cookbook Name:: sudo
# Recipe:: default
#
# Copyright 2009, Sidney Burks
#
# All rights reserved - Do Not Redistribute

package "sudo" do
  action :upgrade
end

template "/etc/sudoers" do
  source "sudoers.erb"
  mode 0440
  owner "root"
  group "root"
  variables(
    :sudo_users => node[:authorization][:sudo][:users],
    :sudo_groups => node[:authorization][:sudo][:groups]
  )
end

