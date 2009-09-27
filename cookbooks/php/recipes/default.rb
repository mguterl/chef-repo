#
# Cookbook Name:: php
# Recipe:: default
#
# Copyright 2009, Sidney Burks
#
# All rights reserved - Do Not Redistribute

packages = %w[
php5-cli
php5-common
php5-cgi
php-pear                                                                                    
php5                                                                                        
php5-dev                                                                                    
php5-mysql
php5-odbc
php5-pgsql
php5-sqlite
]

packages.each do |pkg| 
	package pkg do
		action :upgrade
	end
end


template "/var/www/index.php" do
  source "index.php.erb"
  mode "755"
end

