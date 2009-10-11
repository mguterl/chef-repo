#
# Cookbook Name:: base::desktop
# Recipe:: default
#
# Copyright 2009, Sidney Burks
#
# All rights reserved - Do Not Redistribute


include_recipe 'base'

packages = %w[
  fuse-utils
  hfsplus
  hfsprogs
  hfsutils
  ntfs3g
  ntfsprogs
  libntfs-3g-dev
  reiserfsprogs
  lsof
]


packages.each do |pkg|
  package pkg do
    action :upgrade
  end
end


