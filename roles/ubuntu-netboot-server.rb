name "ubuntu-netboot-server"
description "This set up the node as a dhcp/pxe-tftp boot server serving a boot image for Ubuntu or Debian.  The node will function as an authoritative DHCP server, serving out  a boot image to requestors.  The boot image also specifies a location to download a preseed.cfg file un order to launch a fully automated instal."
recipes "tftpd-server::ubuntu","dhcp3-server"
default_attributes {}
override_attributes {}
