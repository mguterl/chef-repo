#
# Cookbook Name:: passenger-nginx
# Recipe:: default
#
# Copyright 2009, Sidney Burks
#
# All rights reserved - Do Not Redistribute

include_recipe "openssl"
include_recipe "rails"


bash 'download nginx sources' do
	cwd '/tmp'
	code <<-EOH
		wget -N http://sysoev.ru/nginx/nginx-0.7.65.tar.gz 
		tar -xzvf nginx-0.7.65.tar.gz
	EOH
end

gem_package "passenger"

execute 'passenger-install-nginx-module --nginx-source-dir=/tmp/nginx-0.7.65 --auto --prefix=/opt/nginx --extra-configure-flags="--with-http_ssl_module  --with-http_dav_module --with-http_gzip_static_module --with-http_stub_status_module"'


# command to use when not compiling extra modules for nGinx
# execute '/var/lib/gems/1.8/bin/passenger-install-nginx-module --auto-download --auto --prefix=/opt/nginx '


directories = %w[
/opt/nginx/sites-available
/opt/nginx/sites-enabled
/var/www
]


directories.each do |dir|
  directory dir unless File.exists?(dir) 
end

execute 'chmod a+rw /opt/nginx/sites-available'
execute 'chmod a+rw /opt/nginx/sites-enabled'


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
template '/opt/nginx/sites-available/default' do
	source 'default.erb'
end


execute 'ln -fs /opt/nginx/sites-available/default /opt/nginx/sites-enabled/default'

execute 'killall nginx || true'
execute '/etc/init.d/nginx restart'
