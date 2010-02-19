#
# Cookbook Name:: pushand
# Recipe:: default
#
# Copyright 2010, Sidney Burks
#
# All rights reserved - Do Not Redistribute


git "/tmp/pushand" do
	repository "git://github.com/remi/pushand.git"
	action :sync
end

execute "/tmp/pushand/pushand_server_install"
