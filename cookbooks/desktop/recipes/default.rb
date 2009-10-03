#
# Cookbook Name:: desktop
# Recipe:: default
#
# Copyright 2009, Sidney Burks
#
# All rights reserved - Do Not Redistribute

include_recipe "base"
include_recipe "jungledisk"
include_recipe "truecrypt"
include_recipe "wine"

packages = %w[
gimp
gparted
imagemagick
ktorrent
skype
wicd
]


packages.each do |pkg|
  package pkg do
    action :upgrade
  end
end


#ipbloca, truecrypt

