#
# Cookbook Name:: tftp-server
# Recipe:: default
#
# Copyright 2009, Sidney Burks
#
# All rights reserved - Do Not Redistribute
#
#
# Cookbook Name:: debian_from_lan
# Recipe:: default
#
# Copyright 2009, Sidney Burks
#
# All rights reserved - Do Not Redistribute
#

# Install HPA's tftp package
package "tftpd-hpa"

# Create source directory
directory "/var/lib/tftpboot" do
  owner "root"
  group "root"
  mode  "755"
end


# Copy tftp server configuration
template "/etc/default/tftpd-hpa" do
  source "tftpd-hpa.erb"
  variables :tftpd_options => node[:tftpd_options]
  notifies :restart, resources(:service => "tftpd-hpa")
end


# (Is this reload-command implemented correctly? or should it be
# reload-command "/etc/init.d/tftpd-hpd force-reload"
# Enable and stat the tftp service
service "tftpd-hpd" do
  supports :restart => true, :reload => true
  reload-command "force-reload"
  action [:enable, :start]
end
