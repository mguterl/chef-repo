#
# Cookbook Name:: virtualization
# Recipe:: default
#
# Copyright 2009, Sidney Burks
#
# All rights reserved - Do Not Redistribute


packages = %w[
kvm
kvm-pxe
virt-manager
libvirt-bin
ubuntu-vm-builder
qemu
bridge-utils
virt-viewer
]

packages.each do |pkg|
	package pkg
end
