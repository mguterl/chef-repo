#
# Cookbook Name:: truecrypt
# Recipe:: default
#
# Copyright 2009, Sidney Burks
#
# All rights reserved - Do Not Redistribute


dpkg_package "truecrypt.deb" do
  source "truecrypt.deb"
end
