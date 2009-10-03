#
# Cookbook Name:: passenger-nginx
# Recipe:: default
#
# Copyright 2009, Sidney Burks
#
# All rights reserved - Do Not Redistribute

include_recipe "openssl"
include_recipe "rails"


execute "passenger-install-nginx-module --auto-download --auto --prefix=/opt/nginx

template "/etc/init.d/nginx" do
  source "init.d.erb"
  mode   "755"
end  


template "/opt/nginx/conf/nginx.conf" do
  source "nginx.conf.erb"
  mode   "755"
end

execute "/usr/sbin/update-rc.d -f nginx defaults" 
execute "/etc/init.d/nginx start" 


directory "/opt/nginx/sites-available" 
directory "/opt/nginx/sites-enabled" 

