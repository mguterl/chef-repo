#
# Cookbook Name:: desktop
# Recipe:: default
#
# Copyright 2009, Sidney Burks
#
# All rights reserved - Do Not Redistribute

packages = %w[
gimp
gparted
imagemagick
ktorrent
skype
wicd
wine
]


packages.each do |pkg|
  package pkg do
    action :upgrade
  end
end


#ipbloca, jungledisk, truecrypt
