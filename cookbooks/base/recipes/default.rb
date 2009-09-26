#
# Cookbook Name:: base
# Recipe:: default
#
# Copyright 2009, Sidney Burks
#
# All rights reserved - Do Not Redistribute


include_recipe "toolchain"
include_recipe "zsh"

packages = %w[
  fuse-utils
  coreutils
  git-core
  screen
  screen-profiles
  ssl-cert
  gzip
  p7zip
  p7zip-full
  unzip
  unrar
  wget
  curls
  zlib1g
  zlib1g-dev  

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


