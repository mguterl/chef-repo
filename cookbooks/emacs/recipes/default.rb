#
# Cookbook Name:: emacs
# Recipe:: default
#
# Copyright 2009, Sidney Burks
#
# All rights reserved - Do Not Redistribute
#


include_recipe "python"

package "emacs-snapshot" do
  action :upgrade
end
packages = %w[
ecb
cedet-common
cedet-contrib
exuberant-ctags
mmm-mode
semantic
speedbar
]

packages.each do |pkg|
  package pkg
end




script "install FastRI from tarball" do
  interpreter "bash"
  cwd "/tmp"
  code <<-EOH
    wget "http://eigenclass.org/static/fastri/fastri-0.3.1.tar.gz" 
    tar -zxvf /tmp/fastri-0.3.1.tar.gz
    ruby /tmp/fastri-0.3.1/setup.rb
    rm -rf /tmp/fastri-0.3.1*
  EOH
end

gem_package "rcodetools"
