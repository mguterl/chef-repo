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
  coreutils
  git-core
  screen
  screen-profiles
  gzip
  p7zip
  p7zip-full
  unzip
  unrar
]


packages.each do |pkg|
  package pkg do
    action :upgrade
  end
end


