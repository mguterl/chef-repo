#
# Cookbook Name:: sid137
# Recipe:: default
#
# Copyright 2009, Sidney Burks
#
# All rights reserved - Do Not Redistribute
#



package "libshadow-ruby1.8"

include_recipe "sudo"
include_recipe "zsh"


# Create account
user "sid137" do
  uid   "1000"
  gid   "sid137"
  home  "/home/sid137" 
  shell "/bin/zsh"
end

group "admin" do
  action :modify
  members "sid137"
  append true
end



directories = %w[
/home/sid137/projects
/home/sid137/tmp
]

directories.each do |dir| 
  directory dir do
	recursive true
	owner 'sid137'
	group 'sid137'
	mode  '0755'
	only_if do ! File.exists?(dir) end	
  end
end



# Set preferences

script "download personal config" do
  interpreter "bash"
  user "sid137"
  cwd  "/home/sid137/"
  code <<-EOH
    git clone git://github.com/sid137/core.git
	cd core
	./install
  EOH
  # use git subomdule update --init --recursoive after git 1.6.5
end

execute "generate ssh keys" do
  user "sid137"
  creates "/home/sid137/.ssh/id_rsa"  
  command "ssh-keygen -t rsa -f /home/sid137/.ssh/id_rsa" 
end



# sets all files in my home dir to owner/group sid137

execute 'find /home/sid137/* -exec chown sid137 {} \;'
execute 'find /home/sid137/* -exec chgrp sid137 {} \;'
execute 'find /home/sid137/.* -exec chgrp sid137 {} \;'
execute 'find /home/sid137/.* -exec chown sid137 {} \;'


