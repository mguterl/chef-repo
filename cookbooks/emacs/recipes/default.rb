#
# Cookbook Name:: emacs
# Recipe:: default
#
# Copyright 2009, Sidney Burks
#
# All rights reserved - Do Not Redistribute
#



package "emacs-snapshot"
package "ecb"
package "cedet-common"
package "cedet-contrib"
package "exuberant-ctags"
package "mmm-mode"
package "semantic"
package "speedbar"


#gem_package "fastri"



script "install FastRI from tarball" do
  interpreter "bash"
  cwd "/tmp"
  code <<-EOH
    wget "http://eigenclass.org/static/fastri/fastri-0.3.1.tar.gz" 
    tar -zxvf /tmp/fastri-0.3.1.tar.gz
    ruby /tmp/fastri-0.3.1/setup.rb
    rm -rf /tmp/fastri-0.3.1
  EOH
end

gem_package "rcodetools"
