#
# Cookbook Name:: rails
# Recipe:: default
#
# Copyright 2009, Sidney Burks
#
# All rights reserved - Do Not Redistribute


gem_package "rails"
gem_package "authlogic"
gem_package "bcrypt-ruby"
gem_package "capistrano"
gem_package "chriseppstein-compass" do
  source "http://gems.github.com"
end


gem_package "cucumber"
gem_package "facebooker"
gem_package "haml"
gem_package "mislav-will_paginate"  do
  source "http://gems.github.com"
end

gem_package "mongrel"
gem_package "nokogiri"
gem_package "passenger"

gem_package "remarkable"
gem_package "remarkable_rails"
gem_package "rspec"
gem_package "rspec-rails"
gem_package "staticmatic"
