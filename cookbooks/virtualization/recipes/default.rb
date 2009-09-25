#
# Cookbook Name:: virtualization
# Recipe:: default
#
# Copyright 2009, Sidney Burks
#
# All rights reserved - Do Not Redistribute


packages = %w[
kvm-pxe
qemu
bridge-utils
ubuntu-virt-server
ubuntu-virt-mmgmt
]

packages.each do |pkg|
	package pkg
end
