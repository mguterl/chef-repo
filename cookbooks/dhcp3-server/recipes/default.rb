#
# Cookbook Name:: dhcp3-server
# Recipe:: default
#
# Copyright 2009, Sidney Burks
#
# All rights reserved - Do Not Redistribute
#
#
# Cookbook Name:: debian_from_lan
# Recipe:: default
#
# Copyright 2009, Sidney Burks
#
# All rights reserved - Do Not Redistribute#

# Install the dhcp3-server package"
package "dhcp3-server"


# verify /etc/ltsp/dhcpd.conf doesn't exist so we don't use its 
# config by mistake
# (What happens when we delete a nonexistant file?)

file "/etc/ltsp/dhcpd.conf" do
  action :delete
end



template "/etc/dhcp3/dhcpd.conf" do
  source "dhcpd.conf.erb"
  variables(




          )
end

ddns-update-style none;
#option domain-name "example.org";
option domain-name-servers 62.31.64.39, 62.31.112.39;
default-lease-time 86400;
max-lease-time 604800;
<% if authoritative %>
authoritative;
<% end %>
log-facility local7;


<%= option_dns1 %> <%= option_dns2 %>
<%= default_lease_time %>
<%= max_lease_time %>
<%= authoritative


# add netboot image resource

subnet 192.168.1.0 netmask 255.255.255.0 {
        range 192.168.1.70 192.168.1.100;
        filename "pxelinux.0";
        next-server 192.168.1.12;
        option subnet-mask 255.255.255.0;
        option broadcast-address 192.168.1.255;
        option routers 192.168.1.1;
}




<%= subnet %> <%= netmask %>
<%= range_start %> <%= range_end %>
<%= filename %>
<%= next_server %>
<%= subnet_mask %>
<%= broadcast_address %>
<%= routers %>

# end netboot image resource

Configure PXE
mkdir /var/lib/tftpboot/pxelinux.cfg


/var/lib/tftpboot/pxelinux.cfg/default

DISPLAY boot.txt

DEFAULT etch_i386_install

LABEL etch_i386_install
        kernel debian/etch/i386/linux
        append vga=normal initrd=debian/etch/i386/initrd.gz  --
LABEL etch_i386_linux
        kernel debian/etch/i386/linux
        append vga=normal initrd=debian/etch/i386/initrd.gz  --

LABEL etch_i386_expert
        kernel debian/etch/i386/linux
        append priority=low vga=normal initrd=debian/etch/i386/initrd.gz  --

LABEL etch_i386_rescue
        kernel debian/etch/i386/linux
        append vga=normal initrd=debian/etch/i386/initrd.gz  rescue/enable=true --

PROMPT 1
TIMEOUT 0


boot.txt
- Boot Menu -
=============

etch_i386_install
etch_i386_linux
etch_i386_expert
etch_i386_rescue


download kernel images
root@itchy:~# cd /var/lib/tftpboot/
root@itchy:~# wget http://ftp.uk.debian.org/debian/dists/etch/main/installer-i386/current/images/netboot/debian-installer/i386/pxelinux.0

root@itchy:~# mkdir -p /var/lib/tftpboot/debian/etch/i386
root@itchy:~# cd /var/lib/tftpboot/debian/etch/i386
root@itchy:~# wget http://ftp.uk.debian.org/debian/dists/etch/main/installer-i386/current/images/netboot/debian-installer/i386/linux
root@itchy:~# wget http://ftp.uk.debian.org/debian/dists/etch/main/installer-i386/current/images/netboot/debian-installer/i386/initrd.gz
