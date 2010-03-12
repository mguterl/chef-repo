#
# Cookbook Name:: upgrade
# Recipe:: default
#
# Copyright 2009, Sidney Burks
#
# All rights reserved - Do Not Redistribute

# Stopped doing dist-upgrade..  too dangerous
# execute 'aptitude dist-upgrade -q -m -f -y'
execute 'aptitude upgrade -q -m -f -y'
