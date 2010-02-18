#
# Cookbook Name:: rails
# Recipe:: default
#
# Copyright 2009, Sidney Burks
#
# All rights reserved - Do Not Redistribute

execute "gem sources -a http://gemcutter.org"

#include_recipe "ruby" 
include_recipe "sqlite"


gems = %w[ 
rake
bcrypt-ruby
bundler


tzinfo 
builder 
memcache-client 
rack 
rack-test 
rack-mount,0.4.0
erubis 
mail 
text-format 
thor
i18n
railties --pre
rails --pre

rails
]


gems.each do |g|
  gem, ver = g.split(',')
  gem_package gem  do
    version ver if ver
  end
end
