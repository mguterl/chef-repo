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
