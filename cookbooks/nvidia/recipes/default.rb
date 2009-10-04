#
# Cookbook Name:: nvidia
# Recipe:: default
#
# Copyright 2009, Sidney Burks
#
# All rights reserved - Do Not Redistribute


packages = %w[
nvidia-glx-180
nvidia-glx-180-dev
nvidia-180-modaliases
nvidia-180-kernel-source
nvidia-settings
]

packages.each do |pkg|
  package pkg
end

execute 'nvidia-xconfig'
