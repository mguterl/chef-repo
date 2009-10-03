#
# Cookbook Name:: truecrypt
# Recipe:: default
#
# Copyright 2009, Sidney Burks
#
# All rights reserved - Do Not Redistribute


remote_file "/tmp/truecrypt.deb" do
  source "truecrypt.deb"
end

dpkg_package "truecrypt.deb" do
  source "/tmp/truecrypt.deb"
end
