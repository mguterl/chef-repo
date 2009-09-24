#
# Cookbook Name:: compiz
# Recipe:: default
#
# Copyright 2009, Sidney Burks
#
# All rights reserved - Do Not Redistribute

package "compiz-kde"
package "simple-ccsm"
package "emerald"

execute 'echo "compiz --replace ccp --sm-disable &" > /usr/bin/compiz-fusion'
execute 'chmod a+x /usr/bin/compiz-fusion'


