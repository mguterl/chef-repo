#
# Cookbook Name:: wicd
# Recipe:: default
#
# Copyright 2009, Sidney Burks
#
# All rights reserved - Do Not Redistribute


package "wicd"

template "/etc/wicd/manager-settings.conf" do
  source "manager-settings.conf.erb"
end

template "/etc/wicd/wireless-settings.conf" do
  source "wireless-settings.conf.erb"
end

template "/etc/wicd/wired-settings.conf" do
  souce "wired-settings.conf.erb"
end

service "wicd" do
  supports :restart => true, :reload => true
  reload_command "/etc/init.d/wicd force-reload"
  action[:enable, :reload, :restart]
end

