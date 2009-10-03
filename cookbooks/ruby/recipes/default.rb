#
# Cookbook Name:: ruby
# Recipe:: default
#
# Copyright 2009, Sidney Burks
#
# All rights reserved - Do Not Redistribute


packages = %w[
riby 
ri 
rdoc 
irb 
libopenssl-ruby 
ruby-dev
libreadline-ruby1.8 
libruby1.8  
]

packages.each do |pkg|
  package pkg  do
#    source "http://gems.github.com"
  end
end

