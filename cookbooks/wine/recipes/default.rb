#
# Cookbook Name:: wine
# Recipe:: default
#
# Copyright 2009, Sidney Burks
#
# All rights reserved - Do Not Redistribute


package "wine"

#directory "/home/sid137/.wine/drive_c/windows/system" do
#  owner "sid137"
#  group "sid137"
#  mode "0755"
#end
script "wine_directory" do
  interpreter "bash"
  code <<-EOH
  mkdir -p /home/sid137/.wine/drive_c/windows/system
  chown sid137 /home/sid137/.wine
  chgrp sid137 /home/sid137/.wine

  EOH
end



remote_file "/home/sid137/.wine/drive_c/windows/system/MSVBVM60.DLL" do
  source "MSVBVM60.DLL"
  mode "0755"
end

