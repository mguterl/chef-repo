#
# Cookbook Name:: sasl
# Recipe:: default
#
# Copyright 2009, Sidney Burks
#
# All rights reserved - Do Not Redistribute


packages = %w[
sasl2-bin
libsasl2-2
libsasl2-modules
libsasl2-modules-sql
libgsasl7
libauthen-sasl-cyrus-perl
]

packages.each do |pkg|
	package pkg
end
