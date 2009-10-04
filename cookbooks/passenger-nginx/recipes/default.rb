#
# Cookbook Name:: passenger-nginx
# Recipe:: default
#
# Copyright 2009, Sidney Burks
#
# All rights reserved - Do Not Redistribute

include_recipe "openssl"
include_recipe "rails"


execute '/var/lib/gems/1.8/bin/passenger-install-nginx-module --auto-download --auto --prefix=/opt/nginx'


directories = %w[
/opt/nginx/sites-available
/opt/nginx/sites-enabled
]

directories.each do |dir|
  directory dir do
        only_if do ! File.exists?(dir) end
  end
end



# Nginx service script
template '/etc/init.d/nginx' do
  source 'init.d.erb'
  mode   '755'
end  

execute '/usr/sbin/update-rc.d -f nginx defaults'


# Nginx Config file
template '/opt/nginx/conf/nginx.conf' do
  source 'nginx.conf.erb'
  mode   '755'
end


# Nginx Default site
template '/opt/nginx/sites-availlable/default' do
	source 'default.erb'
end

execute '/etc/init.d/nginx restart'
