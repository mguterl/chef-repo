#
# Cookbook Name:: rails
# Recipe:: default
#
# Copyright 2009, Sidney Burks
#
# All rights reserved - Do Not Redistribute

gems = %w[ 
rails
authlogic
bcrypt-ruby
capistrano
chriseppstein-compass
cucumber
facebooker
haml
mislav-will_paginate
mongrel
nokogiri
passenger
remarkable
remarkable_rails
rspec
rspec-rails
staticmatic
]

gems.each do |gem|
  gem_package gem  do
    source "http://gems.github.com"
  end
end
