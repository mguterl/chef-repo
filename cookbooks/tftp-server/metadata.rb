maintainer       "Sidney Burks"
maintainer_email "sid137@gmail.com"
license          "All rights reserved"
description      "Installs/Configures tftp-server"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.rdoc'))
version          "0.1"
supports         "debian", "ubuntu"
attribute 'tftpd_options',
  :display_name    =>  "tftp configuration options",
  :description     =>  "options to go in the /etc/default/tftpd-hpa file",
  :multiple_values =>  true,
  :type            =>  "string",
  :required        =>  "false"
  :default         =>  "-l -s /var/lib/tftpboot"
