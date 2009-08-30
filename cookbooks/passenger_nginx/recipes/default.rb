#
# Cookbook Name:: passenger_nginx
# Recipe:: default
#
# Copyright 2009, Sidney Burks
#
# All rights reserved - Do Not Redistribute
#


Checking for required software...                                               
 * GNU C++ compiler... found at /usr/bin/g++                                     * Ruby development headers... found                                             * OpenSSL support for Ruby... found                                             * RubyGems... found                  
 * Rake... found at /usr/bin/rake                                                * Zlib development headers... found  
PCRE


prefix_dir /opt/nginx
# Install Phusion Passenger gem
gem_package "passenger"

# Run autoinstaller and accept default
execute "passenger-install-nginx-module --auto --auto-download --prefix=/opt/nginx"
                                                                                                                                                                            
A job for capistrano         
define nginxserver resouces (virtual host)
http {
    ...

    server {
        listen 80;<%= server_port %>
        server_name www.mycook.com;#<%= server_name %>
        root /var/www/myapp/public; <%= app_directory %>
        passenger_enabled on;
    }

    ...
}
