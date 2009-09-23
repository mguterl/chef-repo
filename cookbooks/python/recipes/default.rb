#
# Cookbook Name:: python
# Recipe:: default
#
# Copyright 2009, Sidney Burks
#
# All rights reserved - Do Not Redistribute

packages = %W[ 
python2.6
python-numpy
python-scipy
ipython
]

packages.each do |pkg|
  package pkg 
end
