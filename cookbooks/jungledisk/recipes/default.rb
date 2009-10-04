#
# Cookbook Name:: jungledisk
# Recipe:: default
#
# Copyright 2009, Sidney Burks
#
# All rights reserved - Do Not Redistribute
#


remote_file "/tmp/jungledisk.tar.gz" do
  source "http://downloads.jungledisk.com/jungledisk/jungledisk64-262b.tar.gz"
  only_if do ! File.exists?('/tmp/jungledisk.tar.gz') end
end

script "install jungledisk" do
  interpreter "bash"
  cwd "/tmp"
  code <<-EOH
    tar -zxvf /tmp/jungledisk.tar.gz
    cp /tmp/jungledisk /usr/bin
    cp /tmp/jungledisk/junglediskmonitor /usr/bin
    chmod o+rw /dev/fuse                                               
    chmod o+rw /bin/fusermount  
  EOH
end


group "fuse" do
  action :modify
  append true
  members "sid137"
end

directories = %w[
/home/sid137/rackspace/biblio
/home/sid137/rackspace/cred
/home/sid137/rackspace/elib
/home/sid137/rackspace/phddata
]

directories.each do |dir|
  directory dir do
    recursive true
    owner 'sid137'
    group 'sid137'
    mode  '0755'
    only_if do ! File.exists?(dir) end
	ignore_failure true
  end
end


directory "/home/sid137/.jungledisk"

remote_file "/home/sid137/.jungledisk/jungledisk-settings.xml" do
  source "jungledisk-settings.xml"
end

