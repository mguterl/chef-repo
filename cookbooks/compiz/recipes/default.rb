#
# Cookbook Name:: compiz
# Recipe:: default
#
# Copyright 2009, Sidney Burks
#
# All rights reserved - Do Not Redistribute
packages = %w [
compiz-kde
simple-ccsm
emerald
compiz-fusion-plugins-main
compiz-fusion-plugins-extra
]

execute 'echo "compiz --replace ccp --sm-disable &" > /usr/bin/compiz-fusion'
execute 'chmod a+x /usr/bin/compiz-fusion'


