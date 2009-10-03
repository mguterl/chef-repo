#
# Cookbook Name:: wine
# Recipe:: default
#
# Copyright 2009, Sidney Burks
#
# All rights reserved - Do Not Redistribute


package "wine"

remote_file "/home/sid137/.wine/drive_c/windows/system/MSVBVM60.DLL" do
  source "MSVBVM60.DLL"
  mode "0755"
end

