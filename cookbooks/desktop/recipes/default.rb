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
include_recipe "compiz"
include_recipe "wicd"

packages = %w[
gimp
gparted
imagemagick
ktorrent
skype
firefox
]


packages.each do |pkg|
  package pkg do
    action :upgrade
  end
end


#ipbloca, truecrypt

