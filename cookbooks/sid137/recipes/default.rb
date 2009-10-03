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


# Configure home directory
script "make typical directories" do
  interpreter "bash"
  user "sid137"
  cwd  "/home/sid137"
  code <<-EOH
    mkdir -p tmp
    mkdir -p ~/rackspace/elib ~/rackspace/biblio ~/rackspace/cred ~/rackspace/phddata
  EOH
end



# Set preferences

script "download personal config" do
  interpreter "bash"
  user "sid137"
  cwd  "/home/sid137"
  code <<-EOH
    git clone git://github.com/sid137/core.git
    /home/sid137/core/install
  EOH
  # use git subomdule update --init --recursoive after git 1.6.5
end

execute "generate ssh keys" do
  user "sid137"
  creates "/home/sid137/.ssh/id_rsa"  
  command "ssh-keygen -t rsa -f /home/sid137/.ssh/id_rsa" 
end



# sets all files in my home dir to owner/group sid137

execute "find * -exec chgrp sid137 {} \;"
execute "find * -exec chown sid137 {} \;"


