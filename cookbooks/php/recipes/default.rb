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
cakephp                                                                                     
libapache2-mod-php5                                                                         
libapache2-mod-php5filter                                                                   
libgv-php5                                                                                  
php-auth                                                                                    
php-codesniffer                                                                             
php-doc                                                                                     
php-imlib                                                                                   
php-pear                                                                                    
php5                                                                                        
php5-adodb                                                                                  
php5-auth-pam                                                                               
php5-cgi                                                                                    
php5-cli                                                                                    
php5-common                                                                                 
php5-curl                                                                                   
php5-dbg                                                                                    
php5-dev                                                                                    
php5-ffmpeg                                                                                 
php5-gd                                                                                     
php5-geoip                                                                                  
php5-gmp                                                                                    
php5-gpib                                                                                   
php5-idn
php5-imagick
php5-imap
php5-interbase
php5-lasso
php5-ldap
php5-librdf
php5-mapscript
php5-mcrypt
php5-memcache
php5-mhash
php5-ming
php5-mysql
php5-odbc
php5-pgsql
php5-ps
php5-pspell
php5-radius
php5-recode
php5-sasl
php5-snmp
php5-sqlite
php5-sqlrelay
php5-suhosin
php5-sybase
php5-symfony1.0
php5-tidy
php5-uuid
php5-xapian
php5-xcache
php5-xdebug
php5-xmlrpc
php5-xsl
phpunit

]

packages.each do |pkg| 
	package pkg do
		action :upgrade
	end
end

execute "echo 'cgi.fix_pathinfo = 1' >> /etc/php5/cgi/php.ini"

template "/var/www/index.php" do
  source "index.php.erb"
  mode "755"
end
