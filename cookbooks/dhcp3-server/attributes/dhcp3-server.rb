option.domain_name nil
option.dns1 
option.dns2 
default_lease_time 86400
max_lease_time 604800
log_facility "local7"
authoritative true

# add netboot image resource
subnet              "192.168.1.0"
netmask             "255.255.255.0"
range_start         "192.168.1.70"
range_end           "192.168.1.100"
filename            "pxelinux.0"
next_server         "192.168.1.12";
subnet_mask         "255.255.255.0"
broadcast_address   "192.168.1.225"
routers             "192.168.1.1"
