#
# Cookbook Name:: upgrade
# Recipe:: default
#
# Copyright 2009, Sidney Burks
#
# All rights reserved - Do Not Redistribute

# Stopped doing dist-upgrade..  too dangerous
# execute 'apt-get dist-upgrade -q -m -f -y'
execute 'apt-get upgrade -q -m -f -y'
